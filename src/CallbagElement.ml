module Internal = struct
  external source: Dom.node -> Dom.node Callbag.t -> unit = "source" [@@bs.send]
end

type +'a t = ([> [> `callbag] Html_Node.custom ] as 'a) Html_Node.t

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
  callbag: _ t
  =
  let callbag_element =
    Declaredom.make_empty "x-callbag"
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
  in
  callbag
  |> (CallbagBasics.map Html_Node.to_node)
  |> Internal.source callbag_element;
  Obj.magic callbag_element


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
  ?onVolumeChange ?onWaiting ?callbag () =
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
    (Js.Option.getWithDefault (CallbagBasics.from_array [||]) callbag)
