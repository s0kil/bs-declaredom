(** Provides shorthand functions to {!module:Html_Nodes} *)

module Attributes = Html_Attributes
module Events = Html_Events
module Node = Html_Node
module Nodes = Html_Nodes
module Overrides = Html_Overrides

let a = Html_Nodes.A.make
let abbr = Html_Nodes.Abbr.make
let address = Html_Nodes.Address.make
let area = Html_Nodes.Area.make
let article = Html_Nodes.Article.make
let aside = Html_Nodes.Aside.make
let audio = Html_Nodes.Audio.make
let b = Html_Nodes.B.make
let base = Html_Nodes.Base.make
let bdi = Html_Nodes.Bdi.make
let bdo = Html_Nodes.Bdo.make
let blockquote = Html_Nodes.Blockquote.make
let body = Html_Nodes.Body.make
let br = Html_Nodes.Br.make
let button = Html_Nodes.Button.make
let canvas = Html_Nodes.Canvas.make
let caption = Html_Nodes.Caption.make
let cite = Html_Nodes.Cite.make
let code = Html_Nodes.Code.make
let col = Html_Nodes.Col.make
let colgroup = Html_Nodes.Colgroup.make
let data = Html_Nodes.Data.make
let datalist = Html_Nodes.Datalist.make
let dd = Html_Nodes.Dd.make
let del = Html_Nodes.Del.make
let details = Html_Nodes.Details.make
let dfn = Html_Nodes.Dfn.make
let dialog = Html_Nodes.Dialog.make
let div = Html_Nodes.Div.make
let dl = Html_Nodes.Dl.make
let dt = Html_Nodes.Dt.make
let em = Html_Nodes.Em.make
let embed = Html_Nodes.Embed.make
let fieldset = Html_Nodes.Fieldset.make
let figcaption = Html_Nodes.Figcaption.make
let figure = Html_Nodes.Figure.make
let footer = Html_Nodes.Footer.make
let form = Html_Nodes.Form.make
let h1 = Html_Nodes.H1.make
let h2 = Html_Nodes.H2.make
let h3 = Html_Nodes.H3.make
let h4 = Html_Nodes.H4.make
let h5 = Html_Nodes.H5.make
let h6 = Html_Nodes.H6.make
let head = Html_Nodes.Head.make
let header = Html_Nodes.Header.make
let hgroup = Html_Nodes.Hgroup.make
let hr = Html_Nodes.Hr.make
let html = Html_Nodes.Html.make
let i = Html_Nodes.I.make
let iframe = Html_Nodes.Iframe.make
let img = Html_Nodes.Img.make
let input = Html_Nodes.Input.make
let ins = Html_Nodes.Ins.make
let kbd = Html_Nodes.Kbd.make
let label = Html_Nodes.Label.make
let legend = Html_Nodes.Legend.make
let li = Html_Nodes.Li.make
let link = Html_Nodes.Link.make
let main = Html_Nodes.Main.make
let map_ = Html_Nodes.Map.make
let mark = Html_Nodes.Mark.make
let meta = Html_Nodes.Meta.make
let meter = Html_Nodes.Meter.make
let nav = Html_Nodes.Nav.make
let noscript = Html_Nodes.Noscript.make
let option = Html_Nodes.Option.make
let object_ = Html_Nodes.Object.make
let ol = Html_Nodes.Ol.make
let optgroup = Html_Nodes.Optgroup.make
let output = Html_Nodes.Output.make
let p = Html_Nodes.P.make
let param = Html_Nodes.Param.make
let picture = Html_Nodes.Picture.make
let pre = Html_Nodes.Pre.make
let progress = Html_Nodes.Progress.make
let q = Html_Nodes.Q.make
let rb = Html_Nodes.Rb.make
let rp = Html_Nodes.Rp.make
let rt = Html_Nodes.Rt.make
let rtc = Html_Nodes.Rtc.make
let ruby = Html_Nodes.Ruby.make
let s = Html_Nodes.S.make
let samp = Html_Nodes.Samp.make
let script = Html_Nodes.Script.make
let inline_script = Html_Nodes.Script.Inline.make
let section = Html_Nodes.Section.make
let select = Html_Nodes.Select.make
let source = Html_Nodes.Source.make
let span = Html_Nodes.Span.make
let slot = Html_Nodes.Slot.make
let small = Html_Nodes.Small.make
let strong = Html_Nodes.Strong.make
let style = Html_Nodes.Style.make
let sub = Html_Nodes.Sub.make
let summary = Html_Nodes.Summary.make
let sup = Html_Nodes.Sup.make
let table = Html_Nodes.Table.make
let tbody = Html_Nodes.Tbody.make
let td = Html_Nodes.Td.make
let template = Html_Nodes.Template.make
let textarea = Html_Nodes.Textarea.make
let tfoot = Html_Nodes.Tfoot.make
let th = Html_Nodes.Th.make
let thead = Html_Nodes.Thead.make
let time = Html_Nodes.Time.make
let title = Html_Nodes.Title.make
let tr = Html_Nodes.Tr.make
let track = Html_Nodes.Track.make
let u = Html_Nodes.U.make
let ul = Html_Nodes.Ul.make
let var = Html_Nodes.Var.make
let video = Html_Nodes.Video.make
let wbr = Html_Nodes.Wbr.make

let text = Html_Nodes.Text.make
let fragment = Html_Nodes.Fragment.make


(* Override nodes *)
module Body = struct
  let flex = Html_Overrides.Body.flex
  let inline_flex = Html_Overrides.Body.inline_flex
end

module Div = struct
  let flex = Html_Overrides.Div.flex
  let inline_flex = Html_Overrides.Div.inline_flex
  let inline_block = Html_Overrides.Div.inline_block
end

module Section = struct
  let flex = Html_Overrides.Section.flex
  let inline_flex = Html_Overrides.Section.inline_flex
  let inline_block = Html_Overrides.Section.inline_block
end

module Span = struct
  let inline_block = Html_Overrides.Span.inline_block
end
