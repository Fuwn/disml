open Core

type t = [ `Guild_id of Snowflake.t ] [@@deriving sexp, yojson]

let compare (`Guild_id t) (`Guild_id t') = Int64.compare t t'

let get_id (`Guild_id id) = id