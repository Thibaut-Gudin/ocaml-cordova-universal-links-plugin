[@@@js.stop]

val available : unit -> bool

[@@@js.start]

[@@@js.implem
let available () =
  Js_of_ocaml.Js.Optdef.test Js_of_ocaml.Js.Unsafe.global##.universalLinks]

type event

val url : event -> string [@@js.get]

val scheme : event -> string [@@js.get]

val host : event -> string [@@js.get]

val path : event -> string [@@js.get]

type param

val params : event -> param [@@js.get]

(*useless?*)
(*
type ulink

val mk_universal_links : unit -> ulink [@@js.global "universalLinks"]
 *)

val subscribe : ?eventName:string -> callback:(event -> unit) -> unit
  [@@js.global "universalLinks.subscribe"]

val unsubscribe : ?eventName:string -> unit -> unit
  [@@js.global "universalLinks.unsubscribe"]
