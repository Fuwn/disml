open Core

type t = int64 [@@deriving sexp]

let of_yojson_exn d = Yojson.Safe.Util.to_string d |> Int64.of_string

let of_yojson d =
    try Ok (of_yojson_exn d)
    with Yojson.Safe.Util.Type_error (why,_) -> Error why

let to_yojson s : Yojson.Safe.t = `String (Int64.to_string s)

let timestamp snowflake =  Int64.((snowflake lsr 22) + 1_420_070_400_000L)

let time_of_t snowflake =
    let t = timestamp snowflake |> Int64.to_float in
    Time.(Span.of_ms t
    |> of_span_since_epoch)

let timestamp_iso snowflake =
    time_of_t snowflake
    |> Time.(to_string_iso8601_basic ~zone:Zone.utc)