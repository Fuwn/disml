type t = Snowflake.t [@@deriving sexp, yojson]

val compare : t -> t -> int
val get_id : t -> Snowflake.t