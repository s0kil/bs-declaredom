(**
 {e NOTE:}
 This is currently based on the W3C candidate recommendation for
 media queries 4. This API is compatible with CSS3 media queries. Follow
 the CSS3 spec instead for better compatibility

 {{: https://www.w3.org/TR/css3-mediaqueries/ } Media Queries 3}

 {{: https://www.w3.org/TR/mediaqueries-4/ } Media Queries 4}

 {{: https://www.w3.org/TR/mediaqueries-4/#mq-ranges } Discrete vs Range types}
 *)

module Discrete = struct
  module Convert = struct
    type t =
      [
      | `portrait | `landscape | `interlace | `progressive | `slow | `fast
      | `optional_paged [@bs.as "optional-paged"] | `paged | `scroll
      | `srgb | `p3 | `rec2020 | `coarse | `fine | `hover  | `none
      ]
      [@@bs.deriving jsConverter]
  end

  module Value = struct
    type orientation     = [ `portrait | `landscape ]
    type scan            = [ `interlace | `progressive ]
    type update          = [ `none | `slow | `fast ]
    type overflow_block  = [ `none | `scroll | `optional_paged | `paged ]
    type overflow_inline = [ `none | `scroll ]
    type color_gamut     = [ `srgb | `p3 | `rec2020 ]
    type pointer         = [ `none | `coarse | `fine ]
    type hover           = [ `none | `hover ]
  end

  type orientation     = [ `orientation of Value.orientation ]
  type scan            = [ `scan of Value.scan ]
  type grid            = [ `grid ]
  type bitmap          = [ `bitmap ]
  type update          = [ `update of Value.update ]
  type overflow_block  = [ `overflow_block of Value.overflow_block ]
  type overflow_inline = [ `overflow_inline of Value.overflow_inline ]
  type color_gamut     = [ `color_gamut of Value.color_gamut ]
  type pointer         = [ `pointer of Value.pointer ]
  type any_pointer     = [ `any_pointer of Value.pointer ]
  type hover           = [ `hover of Value.hover ]
  type any_hover       = [ `any_hover of Value.hover ]

  type t =
    [
    | orientation | scan | grid | bitmap | update | overflow_block
    | overflow_inline | color_gamut | pointer | hover | any_pointer
    | any_hover
    ]

  let show: t -> string = function
  | `orientation orientation ->
    "orientation: " ^ Convert.tToJs (orientation :> Convert.t)
  | `scan scan ->
    "scan: " ^ Convert.tToJs (scan :> Convert.t)
  | `grid -> "grid: 1"
  | `bitmap -> "grid: 0"
  | `update update ->
    "update: " ^ Convert.tToJs (update :> Convert.t)
  | `overflow_block overflow_block ->
    "overflow-block: " ^ Convert.tToJs (overflow_block :> Convert.t)
  | `overflow_inline overflow_inline ->
    "overflow-inline: " ^ Convert.tToJs (overflow_inline :> Convert.t)
  | `color_gamut color_gamut ->
    "color-gamut: " ^ Convert.tToJs (color_gamut :> Convert.t)
  | `pointer pointer ->
    "pointer: " ^ Convert.tToJs (pointer :> Convert.t)
  | `hover hover ->
    "hover: " ^ Convert.tToJs (hover :> Convert.t)
  | `any_pointer pointer ->
    "any-pointer: " ^ Convert.tToJs (pointer :> Convert.t)
  | `any_hover hover ->
    "any-hover: " ^ Convert.tToJs (hover :> Convert.t)
end


module Range = struct
  (** {{: https://www.w3.org/TR/mediaqueries-4/#mq-range-context } Range Context} *)

  type resolution    = [ `resolution of Css_Unit.Resolution.t ]
  type width         = [ `width of Css_Unit.Length.t ]
  type height        = [ `height of Css_Unit.Length.t ]
  type aspect_ratio  = [ `aspect_ratio of int * int ]
  type color         = [ `color of int ]
  type color_index   = [ `color_index of int ]
  type monochrome    = [ `monochrome of int ]
  type device_width  = [ `device_width of Css_Unit.Length.t ]
  type device_height = [ `device_height of Css_Unit.Length.t ]

  type min_max = [ `min | `max ] [@@bs.deriving jsConverter]

  type compare =
    [
    | `eq [@bs.as " = "] | `lt [@bs.as " < "]  | `le [@bs.as " <= "]
    | `gt [@bs.as " > "] | `ge [@bs.as " >= "] | `none [@bs.as ": "]
    ]
    [@@bs.deriving jsConverter]

  type range =
    [
    | width | height | aspect_ratio | resolution | color | color_index
    | monochrome | device_width | device_height
    ]

  type t = [ `range of min_max option * compare * range ]

  let make ?(m: min_max option) ?(c: compare = `none) (r: range): t =
    `range (m, c, r)

  let show (`range (min_max, c, range): t): string =
    let value = match range with
    | `resolution resolution ->
      "resolution" ^ compareToJs c ^ Css_Unit.Resolution.show resolution
    | `width width ->
      "width" ^ compareToJs c ^ Css_Value.Length.show width
    | `height height ->
      "height" ^ compareToJs c ^ Css_Value.Length.show height
    | `aspect_ratio (a, b) ->
      "aspect-ratio" ^ compareToJs c ^ string_of_int a ^"/"^ string_of_int b
    | `color color ->
      "color" ^ compareToJs c ^ string_of_int color
    | `color_index color_index -> 
      "color-index" ^ compareToJs c ^ string_of_int color_index
    | `monochrome monochrome ->
      "monochrome" ^ compareToJs c ^ string_of_int monochrome
    | `device_width device_width ->
      "device-width" ^
      compareToJs c ^ Css_Value.Length.show device_width
    | `device_height device_height ->
      "device-height" ^
      compareToJs c ^ Css_Value.Length.show device_height
    in
    let min_max' =
      min_max |. Belt.Option.mapWithDefault "" (fun m -> min_maxToJs m ^ "-")
    in
    min_max' ^ value
end


module MediaType = struct
  (** {{: https://www.w3.org/TR/mediaqueries-4/#media-types } Media Type} *)

  module Convert = struct
    type t =
      [
      | `all        | `braille | `embossed | `handheld | `print
      | `projection | `screen  | `speech   | `tty      | `tv
      ]
      [@@bs.deriving jsConverter]
  end

  type all      = [ `all ]      and braille    = [ `braille ]
   and embossed = [ `embossed ] and handheld   = [ `handheld ]
   and print    = [ `print ]    and projection = [ `projection ]
   and screen   = [ `screen ]   and speech     = [ `speech ]
   and tty      = [ `tty ]      and tv         = [ `tv ]

  type t =
    [
    | all | braille | embossed | handheld | print | projection | screen
    | speech | tty | tv
    ]

  let show: t -> string = Convert.tToJs
end


module MediaFeature = struct
  (** {{: https://www.w3.org/TR/mediaqueries-4/#mq-features } Media Feature} *)

  type t = [ Discrete.t | Range.t ]

  let show: t -> string = function
  | #Discrete.t as discrete ->
    Discrete.show discrete
  | #Range.t as range ->
    Range.show range
end


module MediaCondition = struct
  (** {{: https://www.w3.org/TR/mediaqueries-4/#media-conditions } Media Condition} *)

  type t =
    [
    | `not of t | `and_ of t list | `or_ of t list | `group of t
    | MediaFeature.t
    ]

  let rec show: t -> string = function
  | #MediaFeature.t as media_feature ->
    "("^ MediaFeature.show media_feature ^")"
  | `not condition -> "not "^ show condition
  | `and_ xs ->
    xs |> List.map show |> Js.List.toVector |> Js.Array.joinWith " and "
  | `or_  xs ->
    xs |> List.map show |> Js.List.toVector |> Js.Array.joinWith " or "
  | `group condition -> "("^ show condition ^")"
end


module Informative = struct
  module MediaFeatureGroup = struct
    (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-dimensions } Dimensions} *)
    type dimension =
      [ 
      | Range.width | Range.height | Range.aspect_ratio
      | Discrete.orientation
      ]

    (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-display-quality } Display Quality} *)
    type display_quality =
      [
      | Range.resolution | Discrete.scan | Discrete.grid
      | Discrete.update | Discrete.overflow_block | Discrete.overflow_inline
      ]

    (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-colors } Color} *)
    type color =
      [
      | Range.color | Range.color_index | Range.monochrome
      | Discrete.color_gamut
      ]

    (** {{: https://www.w3.org/TR/mediaqueries-4/#mf-interaction } Interaction} *)
    type interaction =
      [
      | Discrete.pointer | Discrete.hover
      | Discrete.any_pointer | Discrete.any_hover
      ]
  end

  module MediaGroup = struct
    (** {{: https://www.w3.org/TR/CSS2/media.html#media-groups } Media Group} *)

    type continuous =
      [
      | MediaType.braille | MediaType.handheld | MediaType.screen
      | MediaType.speech | MediaType.tty | MediaType.tv
      ]

    type paged =
      [
      | MediaType.embossed | MediaType.handheld | MediaType.print
      | MediaType.projection | MediaType.tv
      ]

    type visual =
      [
      | MediaType.handheld | MediaType.print | MediaType.projection
      | MediaType.screen | MediaType.tty | MediaType.tv
      ]

    type audio = [ MediaType.handheld | MediaType.screen | MediaType.tv ]

    type speech = [ MediaType.handheld | MediaType.speech ]

    type tactile = [ MediaType.braille | MediaType.embossed ]

    type grid =
      [
      | MediaType.braille | MediaType.embossed | MediaType.handheld
      | MediaType.tty
      ]

    type bitmap =
      [
      | MediaType.handheld | MediaType.print | MediaType.projection
      | MediaType.screen | MediaType.tv
      ]

    type interactive =
      [
      | MediaType.braille | MediaType.handheld | MediaType.projection
      | MediaType.screen | MediaType.speech | MediaType.tty | MediaType.tv
      ]

    type static =
      [
      | MediaType.braille | MediaType.embossed | MediaType.handheld
      | MediaType.print | MediaType.screen | MediaType.speech
      | MediaType.tty | MediaType.tv
      ]

    type t = [ continuous | paged | visual | audio | speech | tactile ] 
  end
end


module Modifier = struct
  (** {{: https://www.w3.org/TR/mediaqueries-4/#mq-prefix } Media Query Modifiers} *)

  type t =
    [ `not of MediaType.t | `only of MediaType.t | MediaType.t ]

  let show: t -> string = function
  | `not media_type -> "not " ^ MediaType.show media_type
  | `only media_type -> "only " ^ MediaType.show media_type
  | #MediaType.t as media_type ->
    MediaType.show media_type
end


module MediaQuery = struct
  (** {{: https://www.w3.org/TR/mediaqueries-4/#media-query } Media Query} *)

  type t =
    [ `media_query of Modifier.t * MediaCondition.t
    | `modifier of Modifier.t
    | MediaCondition.t
    ]

  let show: t -> string = function
  | `media_query (modifier, media_condition) ->
    Modifier.show modifier ^" and "^ MediaCondition.show media_condition
  | `modifier modifier ->
    Modifier.show modifier
  | #MediaCondition.t as media_condition ->
    MediaCondition.show media_condition
end


module Fn = struct
  let query
    ?(t: Modifier.t option) (condition: MediaCondition.t): MediaQuery.t =
    match t with
    | Some modifier -> `media_query (modifier, condition)
    | None -> (condition :> MediaQuery.t)

  let media conditions = conditions |> List.map query 

  let modifier modifier: MediaQuery.t = `modifier modifier

  let orientation value: MediaCondition.t = `orientation value
  let scan value: MediaCondition.t = `scan value
  let grid: MediaCondition.t = `grid
  let bitmap: MediaCondition.t = `bitmap
  let update value: MediaCondition.t = `update value
  let overflow_block value: MediaCondition.t = `overflow_block value
  let overflow_inline value: MediaCondition.t = `overflow_inline value
  let color_gamut value: MediaCondition.t = `color_gamut value
  let pointer value: MediaCondition.t = `pointer value
  let any_pointer value: MediaCondition.t = `any_pointer value
  let hover value: MediaCondition.t = `hover value
  let any_hover value: MediaCondition.t = `any_hover value

  let resolution value: MediaCondition.t =
    `range (None, `none, `resolution value)
  let min_resolution value: MediaCondition.t =
    `range (Some `min, `none, `resolution value)
  let max_resolution value: MediaCondition.t =
    `range (Some `max, `none, `resolution value)

  let width ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (None, t, `width value)
  let min_width ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `min, t, `width value)
  let max_width ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `max, t, `width value)

  let height ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (None, t, `height value)
  let min_height ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `min, t, `height value)
  let max_height ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `max, t, `height value)

  let aspect_ratio ?(t: Range.compare = `none) a b: MediaCondition.t =
    `range (None, t, `aspect_ratio (a, b))
  let min_aspect_ratio ?(t: Range.compare = `none) a b: MediaCondition.t =
    `range (Some `min, t, `aspect_ratio (a, b))
  let max_aspect_ratio ?(t: Range.compare = `none) a b: MediaCondition.t =
    `range (Some `max, t, `aspect_ratio (a, b))

  let color ?(t: Range.compare = `none) bits_per_color: MediaCondition.t =
    `range (None, t, `color bits_per_color)
  let min_color ?(t: Range.compare = `none)  bits_per_color: MediaCondition.t =
    `range (Some `min, t, `color bits_per_color)
  let max_color ?(t: Range.compare = `none)  bits_per_color: MediaCondition.t =
    `range (Some `max, t, `color bits_per_color)

  let color_index ?(t: Range.compare = `none) n: MediaCondition.t =
    `range (None, t, `color_index n)
  let min_color_index ?(t: Range.compare = `none)  n: MediaCondition.t =
    `range (Some `min, t, `color_index n)
  let max_color_index ?(t: Range.compare = `none)  n: MediaCondition.t =
    `range (Some `max, t, `color_index n)

  let monochrome ?(t: Range.compare = `none) n: MediaCondition.t =
    `range (None, t, `monochrome n)
  let min_monochrome ?(t: Range.compare = `none)  n: MediaCondition.t =
    `range (Some `min, t, `monochrome n)
  let max_monochrome ?(t: Range.compare = `none)  n: MediaCondition.t =
    `range (Some `max, t, `monochrome n)

  let device_width ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (None, t, `device_width value)
  let min_device_width ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `min, t, `device_width value)
  let max_device_width ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `max, t, `device_width value)

  let device_height ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (None, t, `device_height value)
  let min_device_height ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `min, t, `device_height value)
  let max_device_height ?(t: Range.compare = `none) value: MediaCondition.t =
    `range (Some `max, t, `device_height value)
end


(**
 {{: https://www.w3.org/TR/mediaqueries-4/#mq-list } Media Query List}

 {{: https://www.w3.org/TR/mediaqueries-4/#media } Media Queries}
 *)
type t = MediaQuery.t list

let show (t: t): string =
  let media_query_list =
    t |> List.map MediaQuery.show |> Js.List.toVector |> Js.Array.joinWith ", "
  in
  "@media " ^ media_query_list
