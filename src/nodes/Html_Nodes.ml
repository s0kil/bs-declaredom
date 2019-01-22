(**
 HTML Elements
 
 Includes nodes like text nodes and fragments.

 See the {{: https://www.w3.org/TR/html52/fullindex.html#index-elements} full element table} 
 and {{: https://www.w3.org/TR/html52/fullindex.html#events-table} events table} 
 for reference.

 {e NOTE}: If you create a node outside of a specific context, like for example 
 some top-level declaration of an element, you need to annotate it's type.
 
 For example:

 {[
 let hello: Html_Node.div = Node.div ~id:"foo" [|
   Node.span [|Node.text "Hello World!"|]
 |]
 ]}
 *)


(* TODO: hide *)
module Internal = struct
  external make: Dom.node -> _ Html_Node.t = "%identity"
end


module A = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-a} A} *)
  (** ({{: https://www.w3.org/TR/wai-aria-1.1/#link} aria}) *)

  type +'a t = ([> Html_Node.a ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.transparent Html_Node.t

  module Attributes = struct
    module Target = struct
      (** {{: https://www.w3.org/TR/html52/browsers.html#browsing-context-names} Browsing context} *)

      type value =
        [ `blank | `self | `parent | `top ] [@@bs.deriving jsConverter]

      type t = [ value | `browsing_context of string ]

      let show: t -> string = function
      | #value as value ->
        valueToJs value
      | `browsing_context name ->
        name
    end

    external _make:
      ?href:string ->
      ?target:string ->
      ?download:string ->
      ?rel:string ->
      ?rev:string ->
      ?hreflang:string ->
      ?_type:string ->
      ?referrerpolicy:string ->
      unit ->
      Html_Attributes.t = "" [@@bs.obj]

    let make ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
      () =
      _make ?href
        ?target:(Belt.Option.map target Target.show)
        ?download:(Belt.Option.map download Util.string_of_unit)
        ?rel:(Belt.Option.map rel Html_Attributes.LinkType.Hyperlink.show)
        ?rev:(Belt.Option.map rev Html_Attributes.LinkType.Hyperlink.show)
        ?hreflang ?_type
        ?referrerpolicy:
          (Belt.Option.map referrerpolicy Html_Attributes.ReferrerPolicy.show)
        ()
  end


  let make
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy
    ?(aria:[< Html_Attributes.Aria.link
           | Html_Attributes.Aria.button
           | Html_Attributes.Aria.checkbox
           | Html_Attributes.Aria.radio
           | Html_Attributes.Aria.switch
           | Html_Attributes.Aria.tab
           | Html_Attributes.Aria.treeitem
           ] Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "a"
      (Util.merge_all [|
        Attributes.make ?href ?target ?download ?rel ?rev ?hreflang ?_type
          ?referrerpolicy ();
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx
    ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make
      ?href ?target ?download ?rel ?rev ?hreflang ?_type ?referrerpolicy ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Abbr = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-abbr} Abbr} *)

  type +'a t = ([> Html_Node.abbr ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.phrasing Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "abbr"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Address = struct
  (** {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-address} Address} *)

  type +'a t = ([> Html_Node.address ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  let make ?(aria:Html_Attributes.Aria.group Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "address"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Area = struct
  (** {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-area} Area} *)

  type +'a t = ([> Html_Node.area ] as 'a) Html_Node.t

  let make ?(aria:Html_Attributes.Aria.link Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    (): _ t
    =
    Declaredom.make_empty "area"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      ()
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?children:_ () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ()
end


module Br = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-br} Br} *)

  type +'a t = ([> Html_Node.br ] as 'a) Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    (): _ t
    =
    Declaredom.make_empty "br"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      ()
    |> Internal.make

  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?children:_ () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ()
end


module Div = struct
  (** {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-div} Div} *)

  type +'a t = ([> Html_Node.div ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.flow Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(style:Css_Property.block Style.t option)
    ?(cssModule:Css_Property.block Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "div"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Span = struct
  (** {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-span} Span} *)

  type +'a t = ([> Html_Node.span ] as 'a) Html_Node.t

  type +'a child = 'a Html_Node.phrasing Html_Node.t

  let make ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    ?(style:Css_Property.inline Style.t option)
    ?(cssModule:Css_Property.inline Css_Module.t option)
    (children:_ child array): _ t
    =
    let className = Css_Module.get_class ?className ?cssModule ()
    in
    Declaredom.make "span"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?style ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?style ?cssModule ?children () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting ?style ?cssModule
      (Belt.Option.mapWithDefault children [||] Js.List.toVector)
end


module Title = struct
  (** {{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-title} Title} *)

  type +'a t = ([> Html_Node.title ] as 'a) Html_Node.t

  type child = Html_Node.text Html_Node.t

  let make ?(aria:Html_Attributes.Aria.roletype Html_Attributes.Aria.t option)
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting
    child: _ t
    =
    Declaredom.make "title"
      (Util.merge_all [|
        Belt.Option.mapWithDefault aria (Js.Dict.empty ()) Html_Attributes.Aria.from_aria;
        Html_Attributes.Global.make ?accessKey ?className ?classSet
          ?contentEditable ?dataSet ?dir ?draggable ?hidden ?id ?lang
          ?spellCheck ?tabIndex ?title ?translate ();
        Html_Events.Global.make ?onAbort ?onAuxClick ?onBlur ?onCancel
          ?onCanPlay ?onCanPlayThrough ?onChange ?onClick ?onClose ?onCueChange
          ?onDblClick ?onDrag ?onDragEnd ?onDragEnter ?onDragExit ?onDragLeave
          ?onDragOver ?onDragStart ?onDrop ?onDurationChange ?onEmptied ?onEnded
          ?onError ?onFocus ?onInput ?onInvalid ?onKeyDown ?onKeyPress ?onKeyUp
          ?onLoad ?onLoadedData ?onLoadedMetaData ?onLoadEnd ?onLoadStart
          ?onMouseDown ?onMouseEnter ?onMouseLeave ?onMouseMove ?onMouseOut
          ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay ?onPlaying
          ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
          ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate
          ?onToggle ?onVolumeChange ?onWaiting ()
      |])
      (Declaredom.make_text child)
    |> Internal.make


  let jsx ?aria
    ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
    ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
    ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
    ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
    ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
    ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
    ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
    ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
    ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
    ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
    ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
    ?onVolumeChange ?onWaiting ?(children=[]) () =
    make ?aria
      ?accessKey ?className ?classSet ?contentEditable ?dataSet ?dir ?draggable
      ?hidden ?id ?lang ?spellCheck ?tabIndex ?title ?translate
      ?onAbort ?onAuxClick ?onBlur ?onCancel ?onCanPlay ?onCanPlayThrough
      ?onChange ?onClick ?onClose ?onCueChange ?onDblClick ?onDrag ?onDragEnd
      ?onDragEnter ?onDragExit ?onDragLeave ?onDragOver ?onDragStart ?onDrop
      ?onDurationChange ?onEmptied ?onEnded ?onError ?onFocus ?onInput ?onInvalid
      ?onKeyDown ?onKeyPress ?onKeyUp ?onLoad ?onLoadedData ?onLoadedMetaData
      ?onLoadEnd ?onLoadStart ?onMouseDown ?onMouseEnter ?onMouseLeave
      ?onMouseMove ?onMouseOut ?onMouseOver ?onMouseUp ?onWheel ?onPause ?onPlay
      ?onPlaying ?onProgress ?onRateChange ?onReset ?onResize ?onScroll ?onSeeked
      ?onSeeking ?onSelect ?onStalled ?onSubmit ?onSuspend ?onTimeUpdate ?onToggle
      ?onVolumeChange ?onWaiting
      (List.fold_left (fun acc e -> acc ^ e) "" children)
end


module Text = struct
  (** {{: https://www.w3.org/TR/dom/#interface-text} Text node} *)

  type +'a t = ([> Html_Node.text ] as 'a) Html_Node.t

  let make (text: string): _ t = Declaredom.make_text text

  let jsx ?(children=[]) () = make @@ List.fold_left (^) "" children
end


module Fragment = struct
  type +'a t = ([> Html_Node.fragment ] as 'a) Html_Node.t

  type (+'a, +'b) child =
    ([< 'b Html_Node.content > `fragment ] as 'a) Html_Node.t

  let make (children:('a, 'b) child array): ('a, 'b) child = 
    Declaredom.make "fragment"
      (Js.Obj.empty () |> Obj.magic)
      (children |> Js.Array.map Html_Node.to_node)
    |> Internal.make

  let jsx ?children () =
    make @@ Belt.Option.mapWithDefault children [||] Js.List.toVector
end
