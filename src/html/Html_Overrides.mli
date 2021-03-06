(**
 HTML Node Display Overrides

 This module provides display override versions of {!module:Html_Nodes},
 specifically for the generic containers:

   - {!module:Html_Nodes.Body}, the body element
   - {!module:Html_Nodes.Div}, the generic flow container
   - {!module:Html_Nodes.Section}, the generic sectioning container
   - {!module:Html_Nodes.Span}, the generic phrasing container

 The reason why display overrides aren't provided for all html elements is 
 because it's generally considered an antipattern. The same functionality can 
 be achieved with the recommended flex or grid layouts.

 Note: If you're passing in a css_module for inline-block overrides, make sure that
 the css module includes the display rule (ie: Css.inline_block ~display:() ...).
 *)

module Body :
  sig
    type +'a child = ['a Html_Nodes.Body.children | Html_Node.flex_item] Html_Node.t

    val flex :
      ?aria:Html_Attributes.Aria.document Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_afterprint:(Dom.event -> unit) ->
      ?on_beforeprint:(Dom.event -> unit) ->
      ?on_beforeunload:(Dom.event -> unit) ->
      ?on_hashchange:(Dom.event -> unit) ->
      ?on_languagechange:(Dom.event -> unit) ->
      ?on_message:(Dom.event -> unit) ->
      ?on_messageerror:(Dom.event -> unit) ->
      ?on_offline:(Dom.event -> unit) ->
      ?on_online:(Dom.event -> unit) ->
      ?on_pagehide:(Dom.event -> unit) ->
      ?on_pageshow:(Dom.event -> unit) ->
      ?on_popstate:(Dom.event -> unit) ->
      ?on_resize:(Dom.event -> unit) ->
      ?on_rejectionhandled:(Dom.event -> unit) ->
      ?on_storage:(Dom.event -> unit) ->
      ?on_unhandledrejection:(Dom.event -> unit) ->
      ?on_unload:(Dom.event -> unit) ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.flex Css_Style.t ->
      ?css_module:Css_Property.flex Css_Module.t ->
      'a child array ->
      [> Html_Node.body ] Html_Node.t
    val inline_flex :
      ?aria:Html_Attributes.Aria.document Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?slot:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_afterprint:(Dom.event -> unit) ->
      ?on_beforeprint:(Dom.event -> unit) ->
      ?on_beforeunload:(Dom.event -> unit) ->
      ?on_hashchange:(Dom.event -> unit) ->
      ?on_languagechange:(Dom.event -> unit) ->
      ?on_message:(Dom.event -> unit) ->
      ?on_messageerror:(Dom.event -> unit) ->
      ?on_offline:(Dom.event -> unit) ->
      ?on_online:(Dom.event -> unit) ->
      ?on_pagehide:(Dom.event -> unit) ->
      ?on_pageshow:(Dom.event -> unit) ->
      ?on_popstate:(Dom.event -> unit) ->
      ?on_resize:(Dom.event -> unit) ->
      ?on_rejectionhandled:(Dom.event -> unit) ->
      ?on_storage:(Dom.event -> unit) ->
      ?on_unhandledrejection:(Dom.event -> unit) ->
      ?on_unload:(Dom.event -> unit) ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.inline_flex Css_Style.t ->
      ?css_module:Css_Property.inline_flex Css_Module.t ->
      'a child array ->
      [> Html_Node.body ] Html_Node.t
    module Jsx :
      sig
        val flex :
          ?aria:Html_Attributes.Aria.document Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?slot:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_afterprint:(Dom.event -> unit) ->
          ?on_beforeprint:(Dom.event -> unit) ->
          ?on_beforeunload:(Dom.event -> unit) ->
          ?on_hashchange:(Dom.event -> unit) ->
          ?on_languagechange:(Dom.event -> unit) ->
          ?on_message:(Dom.event -> unit) ->
          ?on_messageerror:(Dom.event -> unit) ->
          ?on_offline:(Dom.event -> unit) ->
          ?on_online:(Dom.event -> unit) ->
          ?on_pagehide:(Dom.event -> unit) ->
          ?on_pageshow:(Dom.event -> unit) ->
          ?on_popstate:(Dom.event -> unit) ->
          ?on_resize:(Dom.event -> unit) ->
          ?on_rejectionhandled:(Dom.event -> unit) ->
          ?on_storage:(Dom.event -> unit) ->
          ?on_unhandledrejection:(Dom.event -> unit) ->
          ?on_unload:(Dom.event -> unit) ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.flex Css_Style.t ->
          ?css_module:Css_Property.flex Css_Module.t ->
          ?children:'a child Js.List.t ->
          unit ->
          [> Html_Node.body ] Html_Node.t
        val inline_flex :
          ?aria:Html_Attributes.Aria.document Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?slot:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_afterprint:(Dom.event -> unit) ->
          ?on_beforeprint:(Dom.event -> unit) ->
          ?on_beforeunload:(Dom.event -> unit) ->
          ?on_hashchange:(Dom.event -> unit) ->
          ?on_languagechange:(Dom.event -> unit) ->
          ?on_message:(Dom.event -> unit) ->
          ?on_messageerror:(Dom.event -> unit) ->
          ?on_offline:(Dom.event -> unit) ->
          ?on_online:(Dom.event -> unit) ->
          ?on_pagehide:(Dom.event -> unit) ->
          ?on_pageshow:(Dom.event -> unit) ->
          ?on_popstate:(Dom.event -> unit) ->
          ?on_resize:(Dom.event -> unit) ->
          ?on_rejectionhandled:(Dom.event -> unit) ->
          ?on_storage:(Dom.event -> unit) ->
          ?on_unhandledrejection:(Dom.event -> unit) ->
          ?on_unload:(Dom.event -> unit) ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.inline_flex Css_Style.t ->
          ?css_module:Css_Property.inline_flex Css_Module.t ->
          ?children:'a child Js.List.t ->
          unit ->
          [> Html_Node.body ] Html_Node.t
      end
  end


module Div :
  sig
    type +'a child = ['a Html_Nodes.Div.children | Html_Node.flex_item] Html_Node.t

    val flex :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.flex Css_Style.t ->
      ?css_module:Css_Property.flex Css_Module.t ->
      'a child array ->
      [> Html_Node.div ] Html_Node.t
    val inline_flex :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.inline_flex Css_Style.t ->
      ?css_module:Css_Property.inline_flex Css_Module.t ->
      'a child array ->
      [> Html_Node.div ] Html_Node.t
    val inline_block :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      _ Html_Nodes.Div.child array ->
      [> Html_Node.div ] Html_Node.t
    module Jsx :
      sig
        val flex :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.flex Css_Style.t ->
          ?css_module:Css_Property.flex Css_Module.t ->
          ?children:'a child Js.List.t ->
          unit ->
          [> Html_Node.div ] Html_Node.t
        val inline_flex :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.inline_flex Css_Style.t ->
          ?css_module:Css_Property.inline_flex Css_Module.t ->
          ?children:'a child Js.List.t ->
          unit ->
          [> Html_Node.div ] Html_Node.t
        val inline_block :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.inline_block Css_Style.t ->
          ?css_module:Css_Property.inline_block Css_Module.t ->
          ?children:'a Html_Nodes.Div.child Js.List.t ->
          unit ->
          [> Html_Node.div ] Html_Node.t
      end
  end
module Section :
  sig
    type +'a child = ['a Html_Nodes.Section.children | Html_Node.flex_item] Html_Node.t

    val flex :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.flex Css_Style.t ->
      ?css_module:Css_Property.flex Css_Module.t ->
      'a child array ->
      [> Html_Node.section ] Html_Node.t
    val inline_flex :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.inline_flex Css_Style.t ->
      ?css_module:Css_Property.inline_flex Css_Module.t ->
      'a child array ->
      [> Html_Node.section ] Html_Node.t
    val inline_block :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      'a Html_Nodes.Section.child array ->
      [> Html_Node.section ] Html_Node.t
    module Jsx :
      sig
        val flex :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.flex Css_Style.t ->
          ?css_module:Css_Property.flex Css_Module.t ->
          ?children:_ child Js.List.t ->
          unit ->
          [> Html_Node.section ] Html_Node.t
        val inline_flex :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.inline_flex Css_Style.t ->
          ?css_module:Css_Property.inline_flex Css_Module.t ->
          ?children:_ child Js.List.t ->
          unit ->
          [> Html_Node.section ] Html_Node.t
        val inline_block :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.inline_block Css_Style.t ->
          ?css_module:Css_Property.inline_block Css_Module.t ->
          ?children:_ Html_Nodes.Section.child Js.List.t ->
          unit ->
          [> Html_Node.section ] Html_Node.t
      end
  end
module Span :
  sig
    val inline_block :
      ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
      ?accesskey:string ->
      ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
      ?class_name:string ->
      ?class_set:bool Js.Dict.t ->
      ?contenteditable:unit ->
      ?dataset:string Js.Dict.t ->
      ?dir:Html_Attributes.Global.Value.dir ->
      ?draggable:unit ->
      ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
      ?hidden:unit ->
      ?id:string ->
      ?inputmode:Html_Attributes.Global.Value.inputmode ->
      ?is:string ->
      ?itemid:string ->
      ?itemprop:string ->
      ?itemref:string ->
      ?itemscope:unit ->
      ?itemtype:string ->
      ?lang:string ->
      ?nonce:string ->
      ?spellcheck:string ->
      ?tabindex:int ->
      ?title:string ->
      ?translate:Html_Attributes.Global.Value.translate ->
      ?on_auxclick:(Dom.mouseEvent -> unit) ->
      ?on_blur:(Dom.focusEvent -> unit) ->
      ?on_click:(Dom.mouseEvent -> unit) ->
      ?on_copy:(Dom.clipboardEvent -> unit) ->
      ?on_cut:(Dom.clipboardEvent -> unit) ->
      ?on_dblclick:(Dom.mouseEvent -> unit) ->
      ?on_drag:(Dom.dragEvent -> unit) ->
      ?on_dragend:(Dom.dragEvent -> unit) ->
      ?on_dragenter:(Dom.dragEvent -> unit) ->
      ?on_dragexit:(Dom.dragEvent -> unit) ->
      ?on_dragleave:(Dom.dragEvent -> unit) ->
      ?on_dragover:(Dom.dragEvent -> unit) ->
      ?on_dragstart:(Dom.dragEvent -> unit) ->
      ?on_drop:(Dom.dragEvent -> unit) ->
      ?on_focus:(Dom.focusEvent -> unit) ->
      ?on_input:(Dom.inputEvent -> unit) ->
      ?on_keydown:(Dom.keyboardEvent -> unit) ->
      ?on_keypress:(Dom.keyboardEvent -> unit) ->
      ?on_keyup:(Dom.keyboardEvent -> unit) ->
      ?on_mousedown:(Dom.mouseEvent -> unit) ->
      ?on_mouseenter:(Dom.mouseEvent -> unit) ->
      ?on_mouseleave:(Dom.mouseEvent -> unit) ->
      ?on_mousemove:(Dom.mouseEvent -> unit) ->
      ?on_mouseout:(Dom.mouseEvent -> unit) ->
      ?on_mouseover:(Dom.mouseEvent -> unit) ->
      ?on_mouseup:(Dom.mouseEvent -> unit) ->
      ?on_wheel:(Dom.wheelEvent -> unit) ->
      ?on_paste:(Dom.clipboardEvent -> unit) ->
      ?on_scroll:(Dom.uiEvent -> unit) ->
      ?style:Css_Property.inline_block Css_Style.t ->
      ?css_module:Css_Property.inline_block Css_Module.t ->
      _ Html_Nodes.Span.child array ->
      [> Html_Node.span ] Html_Node.t
    module Jsx :
      sig
        val inline_block :
          ?aria:[< Html_Attributes.Aria.roletype] Html_Attributes.Aria.t ->
          ?accesskey:string ->
          ?autocapitalize:Html_Attributes.Global.Value.autocapitalize ->
          ?class_name:string ->
          ?class_set:bool Js.Dict.t ->
          ?contenteditable:unit ->
          ?dataset:string Js.Dict.t ->
          ?dir:Html_Attributes.Global.Value.dir ->
          ?draggable:unit ->
          ?enterkeyhint:Html_Attributes.Global.Value.enterkeyhint ->
          ?hidden:unit ->
          ?id:string ->
          ?inputmode:Html_Attributes.Global.Value.inputmode ->
          ?is:string ->
          ?itemid:string ->
          ?itemprop:string ->
          ?itemref:string ->
          ?itemscope:unit ->
          ?itemtype:string ->
          ?lang:string ->
          ?nonce:string ->
          ?spellcheck:string ->
          ?tabindex:int ->
          ?title:string ->
          ?translate:Html_Attributes.Global.Value.translate ->
          ?on_auxclick:(Dom.mouseEvent -> unit) ->
          ?on_blur:(Dom.focusEvent -> unit) ->
          ?on_click:(Dom.mouseEvent -> unit) ->
          ?on_copy:(Dom.clipboardEvent -> unit) ->
          ?on_cut:(Dom.clipboardEvent -> unit) ->
          ?on_dblclick:(Dom.mouseEvent -> unit) ->
          ?on_drag:(Dom.dragEvent -> unit) ->
          ?on_dragend:(Dom.dragEvent -> unit) ->
          ?on_dragenter:(Dom.dragEvent -> unit) ->
          ?on_dragexit:(Dom.dragEvent -> unit) ->
          ?on_dragleave:(Dom.dragEvent -> unit) ->
          ?on_dragover:(Dom.dragEvent -> unit) ->
          ?on_dragstart:(Dom.dragEvent -> unit) ->
          ?on_drop:(Dom.dragEvent -> unit) ->
          ?on_focus:(Dom.focusEvent -> unit) ->
          ?on_input:(Dom.inputEvent -> unit) ->
          ?on_keydown:(Dom.keyboardEvent -> unit) ->
          ?on_keypress:(Dom.keyboardEvent -> unit) ->
          ?on_keyup:(Dom.keyboardEvent -> unit) ->
          ?on_mousedown:(Dom.mouseEvent -> unit) ->
          ?on_mouseenter:(Dom.mouseEvent -> unit) ->
          ?on_mouseleave:(Dom.mouseEvent -> unit) ->
          ?on_mousemove:(Dom.mouseEvent -> unit) ->
          ?on_mouseout:(Dom.mouseEvent -> unit) ->
          ?on_mouseover:(Dom.mouseEvent -> unit) ->
          ?on_mouseup:(Dom.mouseEvent -> unit) ->
          ?on_wheel:(Dom.wheelEvent -> unit) ->
          ?on_paste:(Dom.clipboardEvent -> unit) ->
          ?on_scroll:(Dom.uiEvent -> unit) ->
          ?style:Css_Property.inline_block Css_Style.t ->
          ?css_module:Css_Property.inline_block Css_Module.t ->
          ?children:_ Html_Nodes.Span.child Js.List.t ->
          unit ->
          [> Html_Node.span ] Html_Node.t
      end
  end

(**
Create a new flex_item html node with the provided flex_item css.
Note: this shouldn't clash with any existing css_module or styles on the element
*)
val with_flex_css :
  ?style:Css_Property.flex_item Css_Style.t ->
  ?css_module:Css_Property.flex_item Css_Module.t ->
  [< _ Html_Node.element] Html_Node.t ->
  [> Html_Node.flex_item] Html_Node.t
