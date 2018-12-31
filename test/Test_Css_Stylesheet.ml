open BsTape
open Test
open Css_Properties
;;

test ~name:"css property - azimuth" @@ fun t -> begin
  let equal a b t = t |> T.equal (a |> Azimuth.make |> Css_Property.show) b in
  t |> equal `inherit_ "inherit";
  t |> equal `initial "initial";
  t |> equal `unset "unset";
  t |> equal (`angle (90., `deg)) "90deg";
  t |> equal (`angle (180., `rad)) "180rad";
  t |> equal (`angle (60.5, `grad)) "60.5grad";
  t |> T.end_
end; 

test ~name:"@media functions" @@ fun t -> begin
  let open Css_Stylesheet in
  let width = Css_Media.Fn.width
  and visual = Style.MediaGroup.visual
  and block = Style.block
	in
  let x = make `utf_8
    [
      media_print
        ~position:(Css_Properties.Position.Relative.make ~bottom:(`percent 5) ~left:(`percent 10) ())
        ~condition:(width 1024. `px)
        (`class_name "foo") 
        (visual
          ~color:`red
          ~backgroundColor:`blue ())
    ; style
        ~position:(Css_Properties.Position.Fixed.make ())
        (`class_name "bar")
        (block ~color:`red ())
    ; css_module @@
        Css_Module.make
          ~position:(Css_Properties.Position.Absolute.make ~z_index:3 ~top:(`percent 21) ())
          { name="foobar"
          ; declaration = Style.block ~textAlign:`center ~clear:`both ~color:`blue ()
          }
    ]
  in
  Js.log (Css_Stylesheet.show x);
  t |> T.end_
end; 
