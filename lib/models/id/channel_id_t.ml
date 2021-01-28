open Core

type t = [ `Channel_id of Snowflake.t ] [@@deriving sexp, yojson]

let compare (`Channel_id t) (`Channel_id t') = Int64.compare t t'

let get_id (`Channel_id id) = id