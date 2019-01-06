(**
 CSS Properties

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } full property table} for reference.
 Property values in the W3 spec are written in the 
 {{: https://www.w3.org/TR/css-values-4/#component-combinators } component combinators} format.
 *)

module AlignContent :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#align-content-property} Align Content} *)

    type 'a t = 'a constraint 'a = [> Css_Property.align_content ]
    module Value :
      sig
        type value =
            [ `center
            | `flex_end
            | `flex_start
            | `space_around
            | `space_between
            | `stretch ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `center
            | `flex_end
            | `flex_start
            | `inherit_
            | `initial
            | `space_around
            | `space_between
            | `stretch
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.align_content ] t
  end
module AlignItems :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align Items} *)

    type 'a t = 'a constraint 'a = [> Css_Property.align_items ]
    module Value :
      sig
        type value =
            [ `baseline | `center | `flex_end | `flex_start | `stretch ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `baseline
            | `center
            | `flex_end
            | `flex_start
            | `inherit_
            | `initial
            | `stretch
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.align_items ] t
  end
module AlignSelf :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align Self} *)

    type 'a t = 'a constraint 'a = [> Css_Property.align_self ]
    module Value :
      sig
        type value =
            [ `auto
            | `baseline
            | `center
            | `flex_end
            | `flex_start
            | `stretch ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `auto
            | `baseline
            | `center
            | `flex_end
            | `flex_start
            | `inherit_
            | `initial
            | `stretch
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.align_self ] t
  end
module Azimuth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-azimuth } Azimuth} *)

    type 'a t = 'a constraint 'a = [> Css_Property.azimuth ]
    type _value =
        [ `center
        | `center_left
        | `center_right
        | `far_left
        | `far_right
        | `left
        | `left_side
        | `leftwards
        | `right
        | `right_side
        | `rightwards ]
    val _valueToJs : _value -> string
    val _valueFromJs : string -> _value option

    (** {{: https://www.w3.org/TR/CSS22/aural.html#value-def-angle } Angle} *)
    type value =
        [ `behind of _value option
        | `center
        | `center_left
        | `center_right
        | `deg of float
        | `far_left
        | `far_right
        | `grad of float
        | `inherit_
        | `initial
        | `left
        | `left_side
        | `leftwards
        | `rad of float
        | `right
        | `right_side
        | `rightwards
        | `turn of float
        | `unset ]
    val show : value -> string
    val make : value -> [> Css_Property.azimuth ] t
  end
module BackgroundAttachment :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} *)

    type 'a t = 'a constraint 'a = [> Css_Property.background_attachment ]
    external to_json :
      Css_Property.background_attachment Css_Property.t ->
      < backgroundAttachment : string > Js.t = "%identity"
    val make :
      Css_Value.Background.Attachment.t ->
      [> Css_Property.background_attachment ] t
  end
module BackgroundColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.background_color ]
    val make :
      Css_Value.Background.Color.t -> [> Css_Property.background_color ] t
  end
module BackgroundImage :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} *)

    type 'a t = 'a constraint 'a = [> Css_Property.background_image ]
    val make :
      Css_Value.Background.Image.t -> [> Css_Property.background_image ] t
  end
module BackgroundPosition :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#background-properties } Background Position} *)

    type 'a t = 'a constraint 'a = [> Css_Property.background_position ]
    val make :
      Css_Value.Background.Position.t ->
      [> Css_Property.background_position ] t
  end
module BackgroundRepeat :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} *)

    type 'a t = 'a constraint 'a = [> Css_Property.background_repeat ]
    val make :
      Css_Value.Background.Repeat.t -> [> Css_Property.background_repeat ] t
  end
module Background :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background } Background} *)

    type 'a t = 'a constraint 'a = [> Css_Property.background ]
    module Value :
      sig
        type t =
            Css_Value.Background.Color.t option *
            Css_Value.Background.Image.t option *
            Css_Value.Background.Repeat.t option *
            Css_Value.Background.Attachment.t option *
            Css_Value.Background.Position.t option
        val show : t -> string
      end
    val make :
      ?color:Css_Value.Background.Color.t ->
      ?image:Css_Value.Background.Image.t ->
      ?repeat:Css_Value.Background.Repeat.t ->
      ?attachment:Css_Value.Background.Attachment.t ->
      ?position:Css_Value.Background.Position.t ->
      unit -> [> Css_Property.background ] t
  end
module BorderCollapse :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-collapse } Border Collapse} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_collapse ]
    module Value :
      sig
        type t = [ `collapse | `inherit_ | `initial | `separate | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.border_collapse ] t
  end
module BorderColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_color ]
    val make : Css_Value.Border.Color.t -> [> Css_Property.border_color ] t
  end
module BorderSpacing :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-spacing } Border Spacing} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_spacing ]
    module Value :
      sig
        type t =
            [ `Q of float
            | `cap of float
            | `ch of float
            | `cm of float
            | `em of float
            | `ex of float
            | `ic of float
            | `ih of float
            | `in_ of float
            | `inherit_
            | `initial
            | `mm of float
            | `pc of float
            | `pt of float
            | `px of float
            | `rem of float
            | `rlh of float
            | `unset
            | `vb of float
            | `vh of float
            | `vi of float
            | `vmax of float
            | `vmin of float
            | `vw of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.border_spacing ] t
  end
module BorderWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_width ]
    val make : Css_Value.Border.Width.t -> [> Css_Property.border_width ] t
  end
module BorderStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_style ]
    val make : Css_Value.Border.Style.t -> [> Css_Property.border_style ] t
  end
module BorderTop :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top } Border Top} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_top ]
    module Value :
      sig
        type t =
            Css_Value.Border.Width.t option *
            Css_Value.Border.Style.t option * Css_Value.Border.Color.t option
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_top ] t
  end
module BorderBottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom } Border Bottom} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_bottom ]
    module Value :
      sig
        type t =
            Css_Value.Border.Width.t option *
            Css_Value.Border.Style.t option * Css_Value.Border.Color.t option
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_bottom ] t
  end
module BorderLeft :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left } Border Left} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_left ]
    module Value :
      sig
        type t =
            Css_Value.Border.Width.t option *
            Css_Value.Border.Style.t option * Css_Value.Border.Color.t option
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_left ] t
  end
module BorderRight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right } Border Right} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_right ]
    module Value :
      sig
        type t =
            Css_Value.Border.Width.t option *
            Css_Value.Border.Style.t option * Css_Value.Border.Color.t option
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t ->
      unit -> [> Css_Property.border_right ] t
  end
module Border :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border } Border} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border ]
    module Value :
      sig
        type t =
            Css_Value.Border.Width.t option *
            Css_Value.Border.Style.t option * Css_Value.Border.Color.t option
        val show : t -> string
      end
    val make :
      ?width:Css_Value.Border.Width.t ->
      ?style:Css_Value.Border.Style.t ->
      ?color:Css_Value.Border.Color.t -> unit -> [> Css_Property.border ] t
  end
module BorderTopColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-color } Border Top Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_top_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_top_color ] t
  end
module BorderRightColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-color } Border Right Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_right_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_right_color ] t
  end
module BorderBottomColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-color } Border Bottom Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_bottom_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_bottom_color ] t
  end
module BorderLeftColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-color } Border Left Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_left_color ]
    val make :
      Css_Value.Border.Color.t -> [> Css_Property.border_left_color ] t
  end
module BorderTopStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-style } Border Top Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_top_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_top_style ] t
  end
module BorderRightStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-style } Border Right Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_right_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_right_style ] t
  end
module BorderBottomStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-style } Border Bottom Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_bottom_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_bottom_style ] t
  end
module BorderLeftStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-style } Border Left Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_left_style ]
    val make :
      Css_Value.Border.Style.t -> [> Css_Property.border_left_style ] t
  end
module BorderTopWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-width } Border Top Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_top_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_top_width ] t
  end
module BorderRightWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-width } Border Right Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_right_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_right_width ] t
  end
module BorderBottomWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-width } Border Bottom Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_bottom_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_bottom_width ] t
  end
module BorderLeftWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-width } Border Left Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.border_left_width ]
    val make :
      Css_Value.Border.Width.t -> [> Css_Property.border_left_width ] t
  end
module Bottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-bottom } Bottom} *)

    type 'a t = 'a constraint 'a = [> Css_Property.bottom ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.bottom ] t
  end
module CaptionSide :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-caption-side } Caption Side} *)

    type 'a t = 'a constraint 'a = [> Css_Property.caption_side ]
    module Value :
      sig
        type t = [ `bottom | `inherit_ | `initial | `top | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.caption_side ] t
  end
module Clear :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#flow-control } Clear} *)

    type 'a t = 'a constraint 'a = [> Css_Property.clear ]
    module Value :
      sig
        type value = [ `both | `left | `none | `right ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `both | `inherit_ | `initial | `left | `none | `right | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.clear ] t
  end
module Clip :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-clip } Clip} *)

    type 'a t = 'a constraint 'a = [> Css_Property.clip ]
    module Value :
      sig
        type value =
            [ `Q of float
            | `auto
            | `cap of float
            | `ch of float
            | `cm of float
            | `em of float
            | `ex of float
            | `ic of float
            | `ih of float
            | `in_ of float
            | `mm of float
            | `pc of float
            | `pt of float
            | `px of float
            | `rem of float
            | `rlh of float
            | `vb of float
            | `vh of float
            | `vi of float
            | `vmax of float
            | `vmin of float
            | `vw of float ]
        val show_value : value -> string
        type t =
            [ `inherit_
            | `initial
            | `rect of value * value * value * value
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.clip ] t
  end
module Color :
  sig
    (** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-color } Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.color ]
    module Value :
      sig
        type t =
            [ `aliceblue
            | `antiquewhite
            | `aqua
            | `aquamarine
            | `azure
            | `beige
            | `bisque
            | `black
            | `blanchedalmond
            | `blue
            | `blueviolet
            | `brown
            | `burlywood
            | `cadetblue
            | `chartreuse
            | `chocolate
            | `coral
            | `cornflowerblue
            | `cornsilk
            | `crimson
            | `cyan
            | `darkblue
            | `darkcyan
            | `darkgoldenrod
            | `darkgray
            | `darkgreen
            | `darkgrey
            | `darkkhaki
            | `darkmagenta
            | `darkolivegreen
            | `darkorange
            | `darkorchid
            | `darkred
            | `darksalmon
            | `darkseagreen
            | `darkslateblue
            | `darkslategray
            | `darkslategrey
            | `darkturquoise
            | `darkviolet
            | `deeppink
            | `deepskyblue
            | `dimgray
            | `dimgrey
            | `dodgerblue
            | `firebrick
            | `floralwhite
            | `forestgreen
            | `fuchsia
            | `gainsboro
            | `ghostwhite
            | `gold
            | `goldenrod
            | `gray
            | `green
            | `greenyellow
            | `grey
            | `honeydew
            | `hotpink
            | `hsl of int * int * int
            | `hsla of int * int * int * float
            | `indianred
            | `indigo
            | `inherit_
            | `initial
            | `ivory
            | `khaki
            | `lavender
            | `lavenderblush
            | `lawngreen
            | `lemonchiffon
            | `lightblue
            | `lightcoral
            | `lightcyan
            | `lightgoldenrodyellow
            | `lightgray
            | `lightgreen
            | `lightgrey
            | `lightpink
            | `lightsalmon
            | `lightseagreen
            | `lightskyblue
            | `lightslategray
            | `lightslategrey
            | `lightsteelblue
            | `lightyellow
            | `lime
            | `limegreen
            | `linen
            | `magenta
            | `maroon
            | `mediumaquamarine
            | `mediumblue
            | `mediumorchid
            | `mediumpurple
            | `mediumseagreen
            | `mediumslateblue
            | `mediumspringgreen
            | `mediumturquoise
            | `mediumvioletred
            | `midnightblue
            | `mintcream
            | `mistyrose
            | `moccasin
            | `navajowhite
            | `navy
            | `oldlace
            | `olive
            | `olivedrab
            | `orange
            | `orangered
            | `orchid
            | `palegoldenrod
            | `palegreen
            | `paleturquoise
            | `palevioletred
            | `papayawhip
            | `peachpuff
            | `peru
            | `pink
            | `plum
            | `powderblue
            | `purple
            | `red
            | `rgb of int * int * int
            | `rgba of int * int * int * float
            | `rosybrown
            | `royalblue
            | `saddlebrown
            | `salmon
            | `sandybrown
            | `seagreen
            | `seashell
            | `sienna
            | `silver
            | `skyblue
            | `slateblue
            | `slategray
            | `slategrey
            | `snow
            | `springgreen
            | `steelblue
            | `tan
            | `teal
            | `thistle
            | `tomato
            | `turquoise
            | `unset
            | `violet
            | `wheat
            | `white
            | `whitesmoke
            | `yellow
            | `yellowgreen ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.color ] t
  end
module CueAfter :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-after } Cue After} *)

    type 'a t = 'a constraint 'a = [> Css_Property.cue_after ]
    val make : Css_Value.UriOrNone.t -> [> Css_Property.cue_after ] t
  end
module CueBefore :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-before } Cue Before} *)

    type 'a t = 'a constraint 'a = [> Css_Property.cue_before ]
    val make : Css_Value.UriOrNone.t -> [> Css_Property.cue_before ] t
  end
module Cue :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue } Cue} *)

    type 'a t = 'a constraint 'a = [> Css_Property.cue ]
    module Value :
      sig
        type t =
            [ `cue of Css_Value.UriOrNone.t * Css_Value.UriOrNone.t
            | `inherit_
            | `initial
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.cue ] t
  end
module Cursor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-cursor} Cursor} *)

    type 'a t = 'a constraint 'a = [> Css_Property.cursor ]
    module Value :
      sig
        type value' =
            [ `auto
            | `crosshair
            | `default
            | `e_resize
            | `help
            | `move
            | `n_resize
            | `ne_resize
            | `nw_resize
            | `pointer
            | `progress
            | `s_resize
            | `se_resize
            | `sw_resize
            | `text
            | `w_resize
            | `wait ]
        val value'ToJs : value' -> string
        val value'FromJs : string -> value' option
        type value =
            [ `auto
            | `crosshair
            | `default
            | `e_resize
            | `help
            | `inherit_
            | `initial
            | `move
            | `n_resize
            | `ne_resize
            | `nw_resize
            | `pointer
            | `progress
            | `s_resize
            | `se_resize
            | `sw_resize
            | `text
            | `unset
            | `w_resize
            | `wait ]
        type t = Css_Value.Uri.t list * value
        val show : t -> string
      end
    val make :
      ?uris:Css_Value.Uri.t list -> Value.value -> [> Css_Property.cursor ] t
  end
module Direction :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-direction} Direction} *)

    type 'a t = 'a constraint 'a = [> Css_Property.direction ]
    module Value :
      sig
        type t = [ `inherit_ | `initial | `ltr | `rtl | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.direction ] t
  end
module Elevation :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-elevation} Elevation} *)

    type 'a t = 'a constraint 'a = [> Css_Property.elevation ]
    module Value :
      sig
        type value = [ `above | `below | `higher | `level | `lower ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `above
            | `below
            | `deg of float
            | `grad of float
            | `higher
            | `inherit_
            | `initial
            | `level
            | `lower
            | `rad of float
            | `turn of float
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.elevation ] t
  end
module EmptyCells :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-empty-cells} Empty Cells} *)

    type 'a t = 'a constraint 'a = [> Css_Property.empty_cells ]
    module Value :
      sig
        type t = [ `hide | `inherit_ | `initial | `show | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.empty_cells ] t
  end
module Flex :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-property} Flex} *)

    type 'a t = 'a constraint 'a = [> Css_Property.flex' ]
    module Value :
      sig
        type t =
            [ `basis of Css_Value.LengthPercent.t
            | `flex of int * int option * Css_Value.LengthPercent.t option
            | `inherit_
            | `initial
            | `none
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.flex' ] t
  end
module FlexBasis :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-basis-property} Flex Basis} *)

    type 'a t = 'a constraint 'a = [> Css_Property.flex_basis ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.flex_basis ] t
  end
module FlexDirection :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-direction-property} Flex Direction} *)

    type 'a t = 'a constraint 'a = [> Css_Property.flex_direction ]
    val make :
      Css_Value.Flex.Direction.t -> [> Css_Property.flex_direction ] t
  end
module FlexFlow :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-flow-property} Flex Flow} *)

    type 'a t = 'a constraint 'a = [> Css_Property.flex_flow ]
    module Value :
      sig
        type t =
            [ `flow of Css_Value.Flex.Direction.t * Css_Value.Flex.Wrap.t
            | `inherit_
            | `initial
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.flex_flow ] t
  end
module FlexGrow :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-grow-property} Flex Grow} *)

    type 'a t = 'a constraint 'a = [> Css_Property.flex_grow ]
    val make : int -> [> Css_Property.flex_grow ] t
  end
module FlexShrink :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-shrink-property} Flex Shrink} *)

    type 'a t = 'a constraint 'a = [> Css_Property.flex_shrink ]
    val make : int -> [> Css_Property.flex_shrink ] t
  end
module FlexWrap :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#flex-wrap-property} Flex Wrap} *)

    type 'a t = 'a constraint 'a = [> Css_Property.flex_wrap ]
    val make : Css_Value.Flex.Wrap.t -> [> Css_Property.flex_wrap ] t
  end
module Float :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-float} Float} *)

    type 'a t = 'a constraint 'a = [> Css_Property.float_ ]
    module Value :
      sig
        type value = [ `left | `none | `right ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t = [ `inherit_ | `initial | `left | `none | `right | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.float_ ] t
  end
module FontFamily :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font Family} *)

    type 'a t = 'a constraint 'a = [> Css_Property.font_family ]
    val make : Css_Value.Font.Family.t -> [> Css_Property.font_family ] t
  end
module FontSize :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-size-props } Font Size} *)

    type 'a t = 'a constraint 'a = [> Css_Property.font_size ]
    val make : Css_Value.Font.Size.t -> [> Css_Property.font_size ] t
  end
module FontStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.font_style ]
    val make : Css_Value.Font.Style.t -> [> Css_Property.font_style ] t
  end
module FontVariant :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#small-caps } Font Variant} *)

    type 'a t = 'a constraint 'a = [> Css_Property.font_variant ]
    val make : Css_Value.Font.Variant.t -> [> Css_Property.font_variant ] t
  end
module FontWeight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} *)

    type 'a t = 'a constraint 'a = [> Css_Property.font_weight ]
    val make : Css_Value.Font.Weight.t -> [> Css_Property.font_weight ] t
  end
module Font :
  sig
    (** {{: https://www.w3.org/TR/CSS22/fonts.html#font-shorthand } Font} *)

    type 'a t = 'a constraint 'a = [> Css_Property.font ]
    module Value :
      sig
        type value =
            [ `caption
            | `icon
            | `menu
            | `message_box
            | `small_caption
            | `status_bar ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type value' =
            [ `caption
            | `icon
            | `inherit_
            | `initial
            | `menu
            | `message_box
            | `small_caption
            | `status_bar
            | `unset ]
        type font_property =
            Css_Value.Font.Style.t option * Css_Value.Font.Variant.t option *
            Css_Value.Font.Weight.t option
        type font_size =
            Css_Value.Font.Size.t * Css_Value.LineHeight.t option
        type t =
            [ `caption
            | `font of font_property * font_size
            | `icon
            | `inherit_
            | `initial
            | `menu
            | `message_box
            | `small_caption
            | `status_bar
            | `unset ]
        val show : t -> string
      end
    val make :
      ?style:Css_Value.Font.Style.t ->
      ?variant:Css_Value.Font.Variant.t ->
      ?weight:Css_Value.Font.Weight.t ->
      ?size:Css_Value.Font.Size.t ->
      ?line_height:Css_Value.LineHeight.t ->
      ?value:Value.value' -> unit -> [> Css_Property.font ] t
  end
module Height :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} *)

    type 'a t = 'a constraint 'a = [> Css_Property.height ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.height ] t
  end
module JustifyContent :
  sig
    (** {{: https://www.w3.org/TR/css-flexbox-1/#justify-content-property} Justify Content} *)

    type 'a t = 'a constraint 'a = [> Css_Property.justify_content ]
    module Value :
      sig
        type value =
            [ `center
            | `flex_end
            | `flex_start
            | `space_around
            | `space_between ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `center
            | `flex_end
            | `flex_start
            | `inherit_
            | `initial
            | `space_around
            | `space_between
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.justify_content ] t
  end
module Left :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-left} Left} *)

    type 'a t = 'a constraint 'a = [> Css_Property.left ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.left ] t
  end
module LetterSpacing :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#spacing-props } Letter Spacing} *)

    type 'a t = 'a constraint 'a = [> Css_Property.letter_spacing ]
    module Value :
      sig
        type t =
            [ `Q of float
            | `cap of float
            | `ch of float
            | `cm of float
            | `em of float
            | `ex of float
            | `ic of float
            | `ih of float
            | `in_ of float
            | `inherit_
            | `initial
            | `mm of float
            | `normal
            | `pc of float
            | `pt of float
            | `px of float
            | `rem of float
            | `rlh of float
            | `unset
            | `vb of float
            | `vh of float
            | `vi of float
            | `vmax of float
            | `vmin of float
            | `vw of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.letter_spacing ] t
  end
module LineHeight :
  sig
    (** 
     {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-line-height} Line Height}
     (see {{: https://www.w3.org/TR/CSS22/visudet.html#leading } leading})
     *)

    type 'a t = 'a constraint 'a = [> Css_Property.line_height ]
    val make : Css_Value.LineHeight.t -> [> Css_Property.line_height ] t
  end
module ListStyleImage :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Image} *)

    type 'a t = 'a constraint 'a = [> Css_Property.list_style_image ]
    val make :
      Css_Value.ListStyle.Image.t -> [> Css_Property.list_style_image ] t
  end
module ListStylePosition :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Position} *)

    type 'a t = 'a constraint 'a = [> Css_Property.list_style_position ]
    val make :
      Css_Value.ListStyle.Position.t ->
      [> Css_Property.list_style_position ] t
  end
module ListStyleType :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Type} *)

    type 'a t = 'a constraint 'a = [> Css_Property.list_style_type ]
    val make :
      Css_Value.ListStyle.Type.t -> [> Css_Property.list_style_type ] t
  end
module ListStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/generate.html#list_style } List Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.list_style ]
    module Value :
      sig
        type t =
            Css_Value.ListStyle.Type.t option *
            Css_Value.ListStyle.Position.t option *
            Css_Value.ListStyle.Image.t option
        val show : t -> string
      end
    val make :
      ?type_:Css_Value.ListStyle.Type.t ->
      ?position:Css_Value.ListStyle.Position.t ->
      ?image:Css_Value.ListStyle.Image.t ->
      unit -> [> Css_Property.list_style ] t
  end
module Margin :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin } Margin} *)

    type 'a t = 'a constraint 'a = [> Css_Property.margin ]
    module Value :
      sig
        type t =
            [ `Q of float
            | `auto
            | `cap of float
            | `ch of float
            | `cm of float
            | `em of float
            | `ex of float
            | `ic of float
            | `ih of float
            | `in_ of float
            | `inherit_
            | `initial
            | `margin of
                Css_Value.LengthPercent.t * Css_Value.LengthPercent.t *
                Css_Value.LengthPercent.t * Css_Value.LengthPercent.t
            | `mm of float
            | `pc of float
            | `percent of float
            | `pt of float
            | `px of float
            | `rem of float
            | `rlh of float
            | `unset
            | `vb of float
            | `vh of float
            | `vi of float
            | `vmax of float
            | `vmin of float
            | `vw of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.margin ] t
  end
module MarginTop :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-top } Margin Top} *)

    type 'a t = 'a constraint 'a = [> Css_Property.margin_top ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_top ] t
  end
module MarginRight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-right } Margin Right} *)

    type 'a t = 'a constraint 'a = [> Css_Property.margin_right ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_right ] t
  end
module MarginBottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-bottom } Margin Bottom} *)

    type 'a t = 'a constraint 'a = [> Css_Property.margin_bottom ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_bottom ] t
  end
module MarginLeft :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-left } Margin Left} *)

    type 'a t = 'a constraint 'a = [> Css_Property.margin_left ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.margin_left ] t
  end
module MaxHeight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-height} Max Height} *)

    type 'a t = 'a constraint 'a = [> Css_Property.max_height ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.max_height ] t
  end
module MaxWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-width} Max Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.max_width ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.max_width ] t
  end
module MinHeight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-height} Min Height} *)

    type 'a t = 'a constraint 'a = [> Css_Property.min_height ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.min_height ] t
  end
module MinWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-width} Min Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.min_width ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.min_width ] t
  end
module Order :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-order } Order} *)

    type 'a t = 'a constraint 'a = [> Css_Property.order ]
    val make : int -> [> Css_Property.order ] t
  end
module Orphans :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-orphans } Orphans} *)

    type 'a t = 'a constraint 'a = [> Css_Property.orphans ]
    val make : Css_Value.BreakInside.t -> [> Css_Property.orphans ] t
  end
module OutlineColor :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-color} Outline Color} *)

    type 'a t = 'a constraint 'a = [> Css_Property.outline_color ]
    val make : Css_Value.Outline.Color.t -> [> Css_Property.outline_color ] t
  end
module OutlineStyle :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-style} Outline Style} *)

    type 'a t = 'a constraint 'a = [> Css_Property.outline_style ]
    val make : Css_Value.Outline.Style.t -> [> Css_Property.outline_style ] t
  end
module OutlineWidth :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-width} Outline Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.outline_width ]
    val make : Css_Value.Outline.Width.t -> [> Css_Property.outline_width ] t
  end
module Outline :
  sig
    (** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline} Outline} *)

    type 'a t = 'a constraint 'a = [> Css_Property.outline ]
    module Value :
      sig
        type t =
            [ `inherit_
            | `initial
            | `outline of
                Css_Value.Outline.Color.t * Css_Value.Outline.Style.t *
                Css_Value.Outline.Width.t
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.outline ] t
  end
module Overflow :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-overflow} Overflow} *)

    type 'a t = 'a constraint 'a = [> Css_Property.overflow ]
    module Value :
      sig
        type value = [ `auto | `hidden | `scroll | `visible ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `auto
            | `hidden
            | `inherit_
            | `initial
            | `scroll
            | `unset
            | `visible ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.overflow ] t
  end
module PaddingTop :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-top} Padding Top} *)

    type 'a t = 'a constraint 'a = [> Css_Property.padding_top ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.padding_top ] t
  end
module PaddingRight :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-right} Padding Right} *)

    type 'a t = 'a constraint 'a = [> Css_Property.padding_right ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.padding_right ] t
  end
module PaddingBottom :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-bottom} Padding Bottom} *)

    type 'a t = 'a constraint 'a = [> Css_Property.padding_bottom ]
    val make :
      Css_Value.LengthPercent.t -> [> Css_Property.padding_bottom ] t
  end
module PaddingLeft :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-left} Padding Left} *)

    type 'a t = 'a constraint 'a = [> Css_Property.padding_left ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.padding_left ] t
  end
module Padding :
  sig
    (** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding } Padding} *)

    type 'a t = 'a constraint 'a = [> Css_Property.padding ]
    module Value :
      sig
        type t =
            [ `Q of float
            | `auto
            | `cap of float
            | `ch of float
            | `cm of float
            | `em of float
            | `ex of float
            | `ic of float
            | `ih of float
            | `in_ of float
            | `inherit_
            | `initial
            | `mm of float
            | `padding of
                Css_Value.LengthPercent.t * Css_Value.LengthPercent.t *
                Css_Value.LengthPercent.t * Css_Value.LengthPercent.t
            | `pc of float
            | `percent of float
            | `pt of float
            | `px of float
            | `rem of float
            | `rlh of float
            | `unset
            | `vb of float
            | `vh of float
            | `vi of float
            | `vmax of float
            | `vmin of float
            | `vw of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.padding ] t
  end
module PageBreakAfter :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-after } Page Break After} *)

    type 'a t = 'a constraint 'a = [> Css_Property.page_break_after ]
    val make : Css_Value.PageBreak.t -> [> Css_Property.page_break_after ] t
  end
module PageBreakBefore :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-before } Page Break Before} *)

    type 'a t = 'a constraint 'a = [> Css_Property.page_break_before ]
    val make : Css_Value.PageBreak.t -> [> Css_Property.page_break_before ] t
  end
module PageBreakInside :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-inside } Page Break Inside} *)

    type 'a t = 'a constraint 'a = [> Css_Property.page_break_inside ]
    val make :
      Css_Value.PageBreak.inside -> [> Css_Property.page_break_inside ] t
  end
module PauseAfter :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-after} Pause After} *)

    type 'a t = 'a constraint 'a = [> Css_Property.pause_after ]
    val make : Css_Value.TimePercent.t -> [> Css_Property.pause_after ] t
  end
module PauseBefore :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-before} Pause Before} *)

    type 'a t = 'a constraint 'a = [> Css_Property.pause_before ]
    val make : Css_Value.TimePercent.t -> [> Css_Property.pause_before ] t
  end
module Pause :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause} Pause} *)

    type 'a t = 'a constraint 'a = [> Css_Property.pause ]
    module Value :
      sig
        type t =
            [ `inherit_
            | `initial
            | `pause of Css_Value.TimePercent.t * Css_Value.TimePercent.t
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.pause ] t
  end
module PitchRange :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch-range} Pitch Range} *)

    type 'a t = 'a constraint 'a = [> Css_Property.pitch_range ]
    module Value :
      sig
        type t = [ `inherit_ | `initial | `range of float | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.pitch_range ] t
  end
module Pitch :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch} Pitch} *)

    type 'a t = 'a constraint 'a = [> Css_Property.pitch ]
    module Value :
      sig
        type value = [ `high | `low | `medium | `x_high | `x_low ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `Hz of float
            | `high
            | `inherit_
            | `initial
            | `kHz of float
            | `low
            | `medium
            | `unset
            | `x_high
            | `x_low ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.pitch ] t
  end
module PlayDuring :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-play-during} Play During} *)

    type 'a t = 'a constraint 'a = [> Css_Property.play_during ]
    module Value :
      sig
        type value = [ `mix | `repeat ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `auto
            | `inherit_
            | `initial
            | `none
            | `sound of Css_Value.Uri.t * value
            | `unset
            | `uri of string ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.play_during ] t
  end
module Richness :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-richness} Richness} *)

    type 'a t = 'a constraint 'a = [> Css_Property.richness ]
    module Value :
      sig
        type t = [ `inherit_ | `initial | `richness of float | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.richness ] t
  end
module Right :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-right} Right} *)

    type 'a t = 'a constraint 'a = [> Css_Property.right ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.right ] t
  end
module SpeakHeader :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-header} Speak Header} *)

    type 'a t = 'a constraint 'a = [> Css_Property.speak_header ]
    module Value :
      sig
        type t = [ `always | `inherit_ | `initial | `once | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak_header ] t
  end
module SpeakNumeral :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-numeral} Speak Numeral} *)

    type 'a t = 'a constraint 'a = [> Css_Property.speak_numeral ]
    module Value :
      sig
        type t = [ `continuous | `digits | `inherit_ | `initial | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak_numeral ] t
  end
module SpeakPunctuation :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-punctuation} Speak Punctuation} *)

    type 'a t = 'a constraint 'a = [> Css_Property.speak_punctuation ]
    module Value :
      sig
        type t = [ `code | `inherit_ | `initial | `none | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak_punctuation ] t
  end
module Speak :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak} Speak} *)

    type 'a t = 'a constraint 'a = [> Css_Property.speak ]
    module Value :
      sig
        type value = [ `none | `normal | `spell_out ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `inherit_ | `initial | `none | `normal | `spell_out | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speak ] t
  end
module SpeechRate :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speech-rate} Speech Rate} *)

    type 'a t = 'a constraint 'a = [> Css_Property.speech_rate ]
    module Value :
      sig
        type value =
            [ `fast | `faster | `medium | `slow | `slower | `x_fast | `x_slow ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `fast
            | `faster
            | `inherit_
            | `initial
            | `medium
            | `rate of float
            | `slow
            | `slower
            | `unset
            | `x_fast
            | `x_slow ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.speech_rate ] t
  end
module Stress :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-stress} Stress} *)

    type 'a t = 'a constraint 'a = [> Css_Property.stress ]
    module Value :
      sig
        type t = [ `inherit_ | `initial | `stress of float | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.stress ] t
  end
module TableLayout :
  sig
    (** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-table-layout} Table Layout} *)

    type 'a t = 'a constraint 'a = [> Css_Property.table_layout ]
    module Value :
      sig
        type t = [ `auto | `fixed | `inherit_ | `initial | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.table_layout ] t
  end
module TextAlign :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#alignment-prop } Text Align } *)

    type 'a t = 'a constraint 'a = [> Css_Property.text_align ]
    module Value :
      sig
        type value = [ `center | `justify | `left | `right ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `center
            | `inherit_
            | `initial
            | `justify
            | `left
            | `right
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.text_align ] t
  end
module TextDecoration :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-decoration} Text Decoration} *)

    type 'a t = 'a constraint 'a = [> Css_Property.text_decoration ]
    module Value :
      sig
        type value =
            [ `blink | `line_through | `none | `overline | `underline ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `blink
            | `inherit_
            | `initial
            | `line_through
            | `none
            | `overline
            | `underline
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.text_decoration ] t
  end
module TextIndent :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-indent} Text Indent} *)

    type 'a t = 'a constraint 'a = [> Css_Property.text_indent ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.text_indent ] t
  end
module TextTransform :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-transform} Text Transform} *)

    type 'a t = 'a constraint 'a = [> Css_Property.text_transform ]
    module Value :
      sig
        type value = [ `capitalize | `lowercase | `none | `uppercase ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `capitalize
            | `inherit_
            | `initial
            | `lowercase
            | `none
            | `unset
            | `uppercase ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.text_transform ] t
  end
module Top :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-top} Top} *)

    type 'a t = 'a constraint 'a = [> Css_Property.top ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.top ] t
  end
module UnicodeBidi :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-unicode-bidi} Unicode Bidi} *)

    type 'a t = 'a constraint 'a = [> Css_Property.unicode_bidi ]
    module Value :
      sig
        type value = [ `bidi_override | `embed | `normal ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `bidi_override
            | `embed
            | `inherit_
            | `initial
            | `normal
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.unicode_bidi ] t
  end
module VerticalAlign :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#line-height } Vertical Align} *)

    type 'a t = 'a constraint 'a = [> Css_Property.vertical_align ]
    module Value :
      sig
        (** {{: https://developer.mozilla.org/en-US/docs/Web/CSS/vertical-align#Values_for_inline_elements } Values} *)

        module ParentRelative :
          sig
            (** These values vertically align the element relative to its parent element *)

            type value =
                [ `baseline
                | `middle
                | `sub
                | `super
                | `text_bottom
                | `text_top ]
            val valueToJs : value -> string
            val valueFromJs : string -> value option
            type t =
                [ `Q of float
                | `baseline
                | `cap of float
                | `ch of float
                | `cm of float
                | `em of float
                | `ex of float
                | `ic of float
                | `ih of float
                | `in_ of float
                | `middle
                | `mm of float
                | `pc of float
                | `percent of float
                | `pt of float
                | `px of float
                | `rem of float
                | `rlh of float
                | `sub
                | `super
                | `text_bottom
                | `text_top
                | `vb of float
                | `vh of float
                | `vi of float
                | `vmax of float
                | `vmin of float
                | `vw of float ]
            val show : t -> string
          end
        module LineRelative :
          sig
            (** The following values vertically align the element relative to the entire line *)

            type t = [ `bottom | `top ]
            val tToJs : t -> string
            val tFromJs : string -> t option
            val show : t -> string
          end
      end
    type value =
        [ `Q of float
        | `baseline
        | `bottom
        | `cap of float
        | `ch of float
        | `cm of float
        | `em of float
        | `ex of float
        | `ic of float
        | `ih of float
        | `in_ of float
        | `inherit_
        | `initial
        | `middle
        | `mm of float
        | `pc of float
        | `percent of float
        | `pt of float
        | `px of float
        | `rem of float
        | `rlh of float
        | `sub
        | `super
        | `text_bottom
        | `text_top
        | `top
        | `unset
        | `vb of float
        | `vh of float
        | `vi of float
        | `vmax of float
        | `vmin of float
        | `vw of float ]
    val show : value -> string
    val make : value -> [> Css_Property.vertical_align ] t
  end
module Visibility :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-visibility} Visibility} *)

    type 'a t = 'a constraint 'a = [> Css_Property.visibility ]
    module Value :
      sig
        type value = [ `collapse | `hidden | `visible ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `collapse | `hidden | `inherit_ | `initial | `unset | `visible ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.visibility ] t
  end
module VoiceFamily :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-voice-family} Voice Family} *)

    type 'a t = 'a constraint 'a = [> Css_Property.voice_family ]
    module Value :
      sig
        type generic = [ `child | `female | `male ]
        val genericToJs : generic -> string
        val genericFromJs : string -> generic option
        type t =
            [ `child
            | `female
            | `inherit_
            | `initial
            | `male
            | `specific of string
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.voice_family ] t
  end
module Volume :
  sig
    (** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-volume} Volume} *)

    type 'a t = 'a constraint 'a = [> Css_Property.volume ]
    module Value :
      sig
        type value =
            [ `loud | `medium | `silent | `soft | `x_loud | `x_soft ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `inherit_
            | `initial
            | `loud
            | `medium
            | `percent of float
            | `silent
            | `soft
            | `unset
            | `volume of float
            | `x_loud
            | `x_soft ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.volume ] t
  end
module WhiteSpace :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-white-space} White Space} *)

    type 'a t = 'a constraint 'a = [> Css_Property.white_space ]
    module Value :
      sig
        type value = [ `normal | `nowrap | `pre | `pre_line | `pre_wrap ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `inherit_
            | `initial
            | `normal
            | `nowrap
            | `pre
            | `pre_line
            | `pre_wrap
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.white_space ] t
  end
module Widows :
  sig
    (** {{: https://www.w3.org/TR/CSS22/page.html#propdef-widows } Widows} *)

    type 'a t = 'a constraint 'a = [> Css_Property.widows ]
    val make : Css_Value.BreakInside.t -> [> Css_Property.widows ] t
  end
module Width :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-width} Width} *)

    type 'a t = 'a constraint 'a = [> Css_Property.width ]
    val make : Css_Value.LengthPercent.t -> [> Css_Property.width ] t
  end
module WordSpacing :
  sig
    (** {{: https://www.w3.org/TR/CSS22/text.html#propdef-word-spacing} Word Spacing} *)

    type 'a t = 'a constraint 'a = [> Css_Property.word_spacing ]
    module Value :
      sig
        type t =
            [ `Q of float
            | `cap of float
            | `ch of float
            | `cm of float
            | `em of float
            | `ex of float
            | `ic of float
            | `ih of float
            | `in_ of float
            | `inherit_
            | `initial
            | `mm of float
            | `normal
            | `pc of float
            | `pt of float
            | `px of float
            | `rem of float
            | `rlh of float
            | `unset
            | `vb of float
            | `vh of float
            | `vi of float
            | `vmax of float
            | `vmin of float
            | `vw of float ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.word_spacing ] t
  end
module ZIndex :
  sig
    (** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-z-index} Z-Index} *)

    type 'a t = 'a constraint 'a = [> Css_Property.z_index ]
    val make : int -> [> Css_Property.z_index ] t
  end
module Position :
  sig
    type 'a t = 'a constraint 'a = [> Css_Property.position ]
    module Value :
      sig
        type value = [ `absolute | `fixed | `relative | `static ]
        val valueToJs : value -> string
        val valueFromJs : string -> value option
        type t =
            [ `absolute
            | `fixed
            | `inherit_
            | `initial
            | `relative
            | `static
            | `unset ]
        val show : t -> string
      end
    val make : Value.t -> [> Css_Property.position ] t
    module Convert :
      sig
        val display :
          Css_Property.Position.t -> Css_Property.display Js.Dict.t
        val styles :
          Css_Value.LengthPercent.t option ->
          Css_Value.LengthPercent.t option ->
          Css_Value.LengthPercent.t option ->
          Css_Value.LengthPercent.t option ->
          int option -> Css_Property.display Js.Dict.t
      end
    module Static :
      sig
        type 'a t = 'a constraint 'a = [> Css_Property.Position.static ]
        val make : unit -> [> Css_Property.Position.static ] t
      end
    module Absolute :
      sig
        type 'a t = 'a constraint 'a = [> Css_Property.Position.absolute ]
        val make :
          ?top:Css_Value.LengthPercent.t ->
          ?right:Css_Value.LengthPercent.t ->
          ?bottom:Css_Value.LengthPercent.t ->
          ?left:Css_Value.LengthPercent.t ->
          ?z_index:int -> unit -> [> Css_Property.Position.absolute ] t
      end
    module Relative :
      sig
        type 'a t = 'a constraint 'a = [> Css_Property.Position.relative ]
        val make :
          ?top:Css_Value.LengthPercent.t ->
          ?right:Css_Value.LengthPercent.t ->
          ?bottom:Css_Value.LengthPercent.t ->
          ?left:Css_Value.LengthPercent.t ->
          ?z_index:int -> unit -> [> Css_Property.Position.relative ] t
      end
    module Fixed :
      sig
        type 'a t = 'a constraint 'a = [> Css_Property.Position.fixed ]
        val make :
          ?top:Css_Value.LengthPercent.t ->
          ?right:Css_Value.LengthPercent.t ->
          ?bottom:Css_Value.LengthPercent.t ->
          ?left:Css_Value.LengthPercent.t ->
          ?z_index:int -> unit -> [> Css_Property.Position.fixed ] t
      end
  end