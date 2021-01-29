open Core

type t = Snowflake.t [@@deriving sexp, yojson]

let compare t t' = Int64.compare t t'

let get_id id = id