(** This module is a very simple parsing library for S-expressions. *)
(*
 Copyright (C) 2009  Florent Monnier
 
 This software is provided "AS-IS", without any express or implied warranty.
 In no event will the authors be held liable for any damages arising from
 the use of this software.
 
 Permission is granted to anyone to use this software for any purpose,
 including commercial applications, and to alter it and redistribute it freely.
*)

type sexpr = Atom of string | Expr of sexpr list
(** the type of S-expressions *)

val parse_string : string -> sexpr list
(** parse from a string *)

val parse_ic : in_channel -> sexpr list
(** parse from an input channel *)

val parse_file : string -> sexpr list
(** parse from a file *)

val parse : (unit -> char option) -> sexpr list
(** parse from a custom function, [None] indicates the end of the flux *)

val print_sexpr : sexpr list -> unit
(** a dump function for the type [sexpr] *)

