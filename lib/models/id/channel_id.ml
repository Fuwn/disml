open Core
include Channel_id_t

exception Invalid_message
exception No_message_found

let send_message ?embed ?content ?files ?(tts=false) ?reply ch =
    let embed = match embed with
    | Some e -> Embed.to_yojson e
    | None -> `Null in
    let content = match content with
    | Some c -> `String c
    | None -> `Null in
    let () = match embed, content with
    | `Null, `Null -> raise Invalid_message
    | _ -> () in
    let message_reference = match reply with
    | Some m -> `Assoc [("message_id", Message_id.to_yojson m)]
    | None -> `Null in
    Http.create_message ?files (get_id ch) (`Assoc [
        ("embed", embed);
        ("content", content);
        ("tts", `Bool tts);
        ("message_reference", message_reference);
    ])

let say content ch =
    send_message ~content ch

let delete ch =
    Http.delete_channel (get_id ch)

let get_message ~id ch =
    Http.get_message (get_id ch) id

let get_messages ?(mode=`Around) ?id ?(limit=50) ch =
    let kind = match mode with
    | `Around -> "around", limit
    | `Before -> "before", limit
    | `After -> "after", limit
    in
    let id = match id with
    | Some id -> id
    | None -> raise No_message_found in
    Http.get_messages (get_id ch) id kind

let broadcast_typing ch =
    Http.broadcast_typing (get_id ch)

let get_pins ch =
    Http.get_pinned_messages (get_id ch)

let bulk_delete msgs ch =
    let msgs = `List (List.map ~f:(fun id -> `Int id) msgs) in
    Http.bulk_delete (get_id ch) msgs