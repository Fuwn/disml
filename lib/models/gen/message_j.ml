(* Auto-generated from "message.atd" *)
[@@@ocaml.warning "-27-32-35-39"]

type user = User_t.t

type snowflake = Snowflake_t.t

type partial_member = Member_t.partial_member

type embed = Embed_t.t

type attachment = Attachment_t.t

type t = Message_t.t = {
  id: snowflake;
  author: user;
  channel_id: snowflake;
  member: partial_member option;
  guild_id: snowflake option;
  content: string;
  timestamp: string;
  edited_timestamp: string option;
  tts: bool;
  mention_everyone: bool;
  mentions: snowflake list;
  role_mentions: snowflake list option;
  attachments: attachment list;
  embeds: embed list;
  reactions: snowflake list option;
  nonce: snowflake option;
  pinned: bool;
  webhook_id: snowflake option;
  kind: int
}

type reaction = Reaction_t.t

type member = Member_t.t

let write_user = (
  User_j.write_t
)
let string_of_user ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_user ob x;
  Bi_outbuf.contents ob
let read_user = (
  User_j.read_t
)
let user_of_string s =
  read_user (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_snowflake = (
  Snowflake_j.write_t
)
let string_of_snowflake ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_snowflake ob x;
  Bi_outbuf.contents ob
let read_snowflake = (
  Snowflake_j.read_t
)
let snowflake_of_string s =
  read_snowflake (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_partial_member = (
  Member_j.write_partial_member
)
let string_of_partial_member ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_partial_member ob x;
  Bi_outbuf.contents ob
let read_partial_member = (
  Member_j.read_partial_member
)
let partial_member_of_string s =
  read_partial_member (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_embed = (
  Embed_j.write_t
)
let string_of_embed ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_embed ob x;
  Bi_outbuf.contents ob
let read_embed = (
  Embed_j.read_t
)
let embed_of_string s =
  read_embed (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_attachment = (
  Attachment_j.write_t
)
let string_of_attachment ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_attachment ob x;
  Bi_outbuf.contents ob
let read_attachment = (
  Attachment_j.read_t
)
let attachment_of_string s =
  read_attachment (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__7 = (
  Atdgen_runtime.Oj_run.write_list (
    write_embed
  )
)
let string_of__7 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__7 ob x;
  Bi_outbuf.contents ob
let read__7 = (
  Atdgen_runtime.Oj_run.read_list (
    read_embed
  )
)
let _7_of_string s =
  read__7 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__6 = (
  Atdgen_runtime.Oj_run.write_list (
    write_attachment
  )
)
let string_of__6 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__6 ob x;
  Bi_outbuf.contents ob
let read__6 = (
  Atdgen_runtime.Oj_run.read_list (
    read_attachment
  )
)
let _6_of_string s =
  read__6 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__4 = (
  Atdgen_runtime.Oj_run.write_list (
    write_snowflake
  )
)
let string_of__4 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__4 ob x;
  Bi_outbuf.contents ob
let read__4 = (
  Atdgen_runtime.Oj_run.read_list (
    read_snowflake
  )
)
let _4_of_string s =
  read__4 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__5 = (
  Atdgen_runtime.Oj_run.write_option (
    write__4
  )
)
let string_of__5 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__5 ob x;
  Bi_outbuf.contents ob
let read__5 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read__4
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read__4
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _5_of_string s =
  read__5 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__3 = (
  Atdgen_runtime.Oj_run.write_option (
    Yojson.Safe.write_string
  )
)
let string_of__3 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__3 ob x;
  Bi_outbuf.contents ob
let read__3 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _3_of_string s =
  read__3 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__2 = (
  Atdgen_runtime.Oj_run.write_option (
    write_snowflake
  )
)
let string_of__2 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__2 ob x;
  Bi_outbuf.contents ob
let read__2 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_snowflake
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_snowflake
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _2_of_string s =
  read__2 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write__1 = (
  Atdgen_runtime.Oj_run.write_option (
    write_partial_member
  )
)
let string_of__1 ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write__1 ob x;
  Bi_outbuf.contents ob
let read__1 = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    match Yojson.Safe.start_any_variant p lb with
      | `Edgy_bracket -> (
          match Yojson.Safe.read_ident p lb with
            | "None" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (None : _ option)
            | "Some" ->
              Atdgen_runtime.Oj_run.read_until_field_value p lb;
              let x = (
                  read_partial_member
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_gt p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Double_quote -> (
          match Yojson.Safe.finish_string p lb with
            | "None" ->
              (None : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
      | `Square_bracket -> (
          match Atdgen_runtime.Oj_run.read_string p lb with
            | "Some" ->
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_comma p lb;
              Yojson.Safe.read_space p lb;
              let x = (
                  read_partial_member
                ) p lb
              in
              Yojson.Safe.read_space p lb;
              Yojson.Safe.read_rbr p lb;
              (Some x : _ option)
            | x ->
              Atdgen_runtime.Oj_run.invalid_variant_tag p x
        )
)
let _1_of_string s =
  read__1 (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_t : _ -> t -> _ = (
  fun ob x ->
    Bi_outbuf.add_char ob '{';
    let is_first = ref true in
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"id\":";
    (
      write_snowflake
    )
      ob x.id;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"author\":";
    (
      write_user
    )
      ob x.author;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"channel_id\":";
    (
      write_snowflake
    )
      ob x.channel_id;
    (match x.member with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"member\":";
      (
        write_partial_member
      )
        ob x;
    );
    (match x.guild_id with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"guild_id\":";
      (
        write_snowflake
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"content\":";
    (
      Yojson.Safe.write_string
    )
      ob x.content;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"timestamp\":";
    (
      Yojson.Safe.write_string
    )
      ob x.timestamp;
    (match x.edited_timestamp with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"edited_timestamp\":";
      (
        Yojson.Safe.write_string
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"tts\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.tts;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"mention_everyone\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.mention_everyone;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"mentions\":";
    (
      write__4
    )
      ob x.mentions;
    (match x.role_mentions with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"role_mentions\":";
      (
        write__4
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"attachments\":";
    (
      write__6
    )
      ob x.attachments;
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"embeds\":";
    (
      write__7
    )
      ob x.embeds;
    (match x.reactions with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"reactions\":";
      (
        write__4
      )
        ob x;
    );
    (match x.nonce with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"nonce\":";
      (
        write_snowflake
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"pinned\":";
    (
      Yojson.Safe.write_bool
    )
      ob x.pinned;
    (match x.webhook_id with None -> () | Some x ->
      if !is_first then
        is_first := false
      else
        Bi_outbuf.add_char ob ',';
      Bi_outbuf.add_string ob "\"webhook_id\":";
      (
        write_snowflake
      )
        ob x;
    );
    if !is_first then
      is_first := false
    else
      Bi_outbuf.add_char ob ',';
    Bi_outbuf.add_string ob "\"type\":";
    (
      Yojson.Safe.write_int
    )
      ob x.kind;
    Bi_outbuf.add_char ob '}';
)
let string_of_t ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_t ob x;
  Bi_outbuf.contents ob
let read_t = (
  fun p lb ->
    Yojson.Safe.read_space p lb;
    Yojson.Safe.read_lcurl p lb;
    let field_id = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_author = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_channel_id = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_member = ref (None) in
    let field_guild_id = ref (None) in
    let field_content = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_timestamp = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_edited_timestamp = ref (None) in
    let field_tts = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_mention_everyone = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_mentions = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_role_mentions = ref (None) in
    let field_attachments = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_embeds = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_reactions = ref (None) in
    let field_nonce = ref (None) in
    let field_pinned = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let field_webhook_id = ref (None) in
    let field_kind = ref (Obj.magic (Sys.opaque_identity 0.0)) in
    let bits0 = ref 0 in
    try
      Yojson.Safe.read_space p lb;
      Yojson.Safe.read_object_end lb;
      Yojson.Safe.read_space p lb;
      let f =
        fun s pos len ->
          if pos < 0 || len < 0 || pos + len > String.length s then
            invalid_arg "out-of-bounds substring position or length";
          match len with
            | 2 -> (
                if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                  0
                )
                else (
                  -1
                )
              )
            | 3 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 's' then (
                  8
                )
                else (
                  -1
                )
              )
            | 4 -> (
                if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'y' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'e' then (
                  18
                )
                else (
                  -1
                )
              )
            | 5 -> (
                if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' then (
                  15
                )
                else (
                  -1
                )
              )
            | 6 -> (
                match String.unsafe_get s pos with
                  | 'a' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'h' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'r' then (
                        1
                      )
                      else (
                        -1
                      )
                    )
                  | 'e' -> (
                      if String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = 's' then (
                        13
                      )
                      else (
                        -1
                      )
                    )
                  | 'm' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'b' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' then (
                        3
                      )
                      else (
                        -1
                      )
                    )
                  | 'p' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                        16
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 7 -> (
                if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' then (
                  5
                )
                else (
                  -1
                )
              )
            | 8 -> (
                match String.unsafe_get s pos with
                  | 'g' -> (
                      if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                        4
                      )
                      else (
                        -1
                      )
                    )
                  | 'm' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 's' then (
                        10
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 9 -> (
                match String.unsafe_get s pos with
                  | 'r' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 's' then (
                        14
                      )
                      else (
                        -1
                      )
                    )
                  | 't' -> (
                      if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'p' then (
                        6
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 10 -> (
                match String.unsafe_get s pos with
                  | 'c' -> (
                      if String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'd' then (
                        2
                      )
                      else (
                        -1
                      )
                    )
                  | 'w' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'h' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'k' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'd' then (
                        17
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | 11 -> (
                if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = 'h' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 's' then (
                  12
                )
                else (
                  -1
                )
              )
            | 13 -> (
                if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'i' && String.unsafe_get s (pos+10) = 'o' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 's' then (
                  11
                )
                else (
                  -1
                )
              )
            | 16 -> (
                match String.unsafe_get s pos with
                  | 'e' -> (
                      if String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'p' then (
                        7
                      )
                      else (
                        -1
                      )
                    )
                  | 'm' -> (
                      if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'v' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = 'y' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'n' && String.unsafe_get s (pos+15) = 'e' then (
                        9
                      )
                      else (
                        -1
                      )
                    )
                  | _ -> (
                      -1
                    )
              )
            | _ -> (
                -1
              )
      in
      let i = Yojson.Safe.map_ident p f lb in
      Atdgen_runtime.Oj_run.read_until_field_value p lb;
      (
        match i with
          | 0 ->
            field_id := (
              (
                read_snowflake
              ) p lb
            );
            bits0 := !bits0 lor 0x1;
          | 1 ->
            field_author := (
              (
                read_user
              ) p lb
            );
            bits0 := !bits0 lor 0x2;
          | 2 ->
            field_channel_id := (
              (
                read_snowflake
              ) p lb
            );
            bits0 := !bits0 lor 0x4;
          | 3 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_member := (
                Some (
                  (
                    read_partial_member
                  ) p lb
                )
              );
            )
          | 4 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_guild_id := (
                Some (
                  (
                    read_snowflake
                  ) p lb
                )
              );
            )
          | 5 ->
            field_content := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x8;
          | 6 ->
            field_timestamp := (
              (
                Atdgen_runtime.Oj_run.read_string
              ) p lb
            );
            bits0 := !bits0 lor 0x10;
          | 7 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_edited_timestamp := (
                Some (
                  (
                    Atdgen_runtime.Oj_run.read_string
                  ) p lb
                )
              );
            )
          | 8 ->
            field_tts := (
              (
                Atdgen_runtime.Oj_run.read_bool
              ) p lb
            );
            bits0 := !bits0 lor 0x20;
          | 9 ->
            field_mention_everyone := (
              (
                Atdgen_runtime.Oj_run.read_bool
              ) p lb
            );
            bits0 := !bits0 lor 0x40;
          | 10 ->
            field_mentions := (
              (
                read__4
              ) p lb
            );
            bits0 := !bits0 lor 0x80;
          | 11 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_role_mentions := (
                Some (
                  (
                    read__4
                  ) p lb
                )
              );
            )
          | 12 ->
            field_attachments := (
              (
                read__6
              ) p lb
            );
            bits0 := !bits0 lor 0x100;
          | 13 ->
            field_embeds := (
              (
                read__7
              ) p lb
            );
            bits0 := !bits0 lor 0x200;
          | 14 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_reactions := (
                Some (
                  (
                    read__4
                  ) p lb
                )
              );
            )
          | 15 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_nonce := (
                Some (
                  (
                    read_snowflake
                  ) p lb
                )
              );
            )
          | 16 ->
            field_pinned := (
              (
                Atdgen_runtime.Oj_run.read_bool
              ) p lb
            );
            bits0 := !bits0 lor 0x400;
          | 17 ->
            if not (Yojson.Safe.read_null_if_possible p lb) then (
              field_webhook_id := (
                Some (
                  (
                    read_snowflake
                  ) p lb
                )
              );
            )
          | 18 ->
            field_kind := (
              (
                Atdgen_runtime.Oj_run.read_int
              ) p lb
            );
            bits0 := !bits0 lor 0x800;
          | _ -> (
              Yojson.Safe.skip_json p lb
            )
      );
      while true do
        Yojson.Safe.read_space p lb;
        Yojson.Safe.read_object_sep p lb;
        Yojson.Safe.read_space p lb;
        let f =
          fun s pos len ->
            if pos < 0 || len < 0 || pos + len > String.length s then
              invalid_arg "out-of-bounds substring position or length";
            match len with
              | 2 -> (
                  if String.unsafe_get s pos = 'i' && String.unsafe_get s (pos+1) = 'd' then (
                    0
                  )
                  else (
                    -1
                  )
                )
              | 3 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 's' then (
                    8
                  )
                  else (
                    -1
                  )
                )
              | 4 -> (
                  if String.unsafe_get s pos = 't' && String.unsafe_get s (pos+1) = 'y' && String.unsafe_get s (pos+2) = 'p' && String.unsafe_get s (pos+3) = 'e' then (
                    18
                  )
                  else (
                    -1
                  )
                )
              | 5 -> (
                  if String.unsafe_get s pos = 'n' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 'e' then (
                    15
                  )
                  else (
                    -1
                  )
                )
              | 6 -> (
                  match String.unsafe_get s pos with
                    | 'a' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'h' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'r' then (
                          1
                        )
                        else (
                          -1
                        )
                      )
                    | 'e' -> (
                        if String.unsafe_get s (pos+1) = 'm' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = 's' then (
                          13
                        )
                        else (
                          -1
                        )
                      )
                    | 'm' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'b' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'r' then (
                          3
                        )
                        else (
                          -1
                        )
                      )
                    | 'p' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' then (
                          16
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 7 -> (
                  if String.unsafe_get s pos = 'c' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'n' && String.unsafe_get s (pos+6) = 't' then (
                    5
                  )
                  else (
                    -1
                  )
                )
              | 8 -> (
                  match String.unsafe_get s pos with
                    | 'g' -> (
                        if String.unsafe_get s (pos+1) = 'u' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 'l' && String.unsafe_get s (pos+4) = 'd' && String.unsafe_get s (pos+5) = '_' && String.unsafe_get s (pos+6) = 'i' && String.unsafe_get s (pos+7) = 'd' then (
                          4
                        )
                        else (
                          -1
                        )
                      )
                    | 'm' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = 's' then (
                          10
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 9 -> (
                  match String.unsafe_get s pos with
                    | 'r' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'c' && String.unsafe_get s (pos+4) = 't' && String.unsafe_get s (pos+5) = 'i' && String.unsafe_get s (pos+6) = 'o' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 's' then (
                          14
                        )
                        else (
                          -1
                        )
                      )
                    | 't' -> (
                        if String.unsafe_get s (pos+1) = 'i' && String.unsafe_get s (pos+2) = 'm' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = 's' && String.unsafe_get s (pos+5) = 't' && String.unsafe_get s (pos+6) = 'a' && String.unsafe_get s (pos+7) = 'm' && String.unsafe_get s (pos+8) = 'p' then (
                          6
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 10 -> (
                  match String.unsafe_get s pos with
                    | 'c' -> (
                        if String.unsafe_get s (pos+1) = 'h' && String.unsafe_get s (pos+2) = 'a' && String.unsafe_get s (pos+3) = 'n' && String.unsafe_get s (pos+4) = 'n' && String.unsafe_get s (pos+5) = 'e' && String.unsafe_get s (pos+6) = 'l' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'd' then (
                          2
                        )
                        else (
                          -1
                        )
                      )
                    | 'w' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'b' && String.unsafe_get s (pos+3) = 'h' && String.unsafe_get s (pos+4) = 'o' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'k' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'd' then (
                          17
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | 11 -> (
                  if String.unsafe_get s pos = 'a' && String.unsafe_get s (pos+1) = 't' && String.unsafe_get s (pos+2) = 't' && String.unsafe_get s (pos+3) = 'a' && String.unsafe_get s (pos+4) = 'c' && String.unsafe_get s (pos+5) = 'h' && String.unsafe_get s (pos+6) = 'm' && String.unsafe_get s (pos+7) = 'e' && String.unsafe_get s (pos+8) = 'n' && String.unsafe_get s (pos+9) = 't' && String.unsafe_get s (pos+10) = 's' then (
                    12
                  )
                  else (
                    -1
                  )
                )
              | 13 -> (
                  if String.unsafe_get s pos = 'r' && String.unsafe_get s (pos+1) = 'o' && String.unsafe_get s (pos+2) = 'l' && String.unsafe_get s (pos+3) = 'e' && String.unsafe_get s (pos+4) = '_' && String.unsafe_get s (pos+5) = 'm' && String.unsafe_get s (pos+6) = 'e' && String.unsafe_get s (pos+7) = 'n' && String.unsafe_get s (pos+8) = 't' && String.unsafe_get s (pos+9) = 'i' && String.unsafe_get s (pos+10) = 'o' && String.unsafe_get s (pos+11) = 'n' && String.unsafe_get s (pos+12) = 's' then (
                    11
                  )
                  else (
                    -1
                  )
                )
              | 16 -> (
                  match String.unsafe_get s pos with
                    | 'e' -> (
                        if String.unsafe_get s (pos+1) = 'd' && String.unsafe_get s (pos+2) = 'i' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'e' && String.unsafe_get s (pos+5) = 'd' && String.unsafe_get s (pos+6) = '_' && String.unsafe_get s (pos+7) = 't' && String.unsafe_get s (pos+8) = 'i' && String.unsafe_get s (pos+9) = 'm' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 's' && String.unsafe_get s (pos+12) = 't' && String.unsafe_get s (pos+13) = 'a' && String.unsafe_get s (pos+14) = 'm' && String.unsafe_get s (pos+15) = 'p' then (
                          7
                        )
                        else (
                          -1
                        )
                      )
                    | 'm' -> (
                        if String.unsafe_get s (pos+1) = 'e' && String.unsafe_get s (pos+2) = 'n' && String.unsafe_get s (pos+3) = 't' && String.unsafe_get s (pos+4) = 'i' && String.unsafe_get s (pos+5) = 'o' && String.unsafe_get s (pos+6) = 'n' && String.unsafe_get s (pos+7) = '_' && String.unsafe_get s (pos+8) = 'e' && String.unsafe_get s (pos+9) = 'v' && String.unsafe_get s (pos+10) = 'e' && String.unsafe_get s (pos+11) = 'r' && String.unsafe_get s (pos+12) = 'y' && String.unsafe_get s (pos+13) = 'o' && String.unsafe_get s (pos+14) = 'n' && String.unsafe_get s (pos+15) = 'e' then (
                          9
                        )
                        else (
                          -1
                        )
                      )
                    | _ -> (
                        -1
                      )
                )
              | _ -> (
                  -1
                )
        in
        let i = Yojson.Safe.map_ident p f lb in
        Atdgen_runtime.Oj_run.read_until_field_value p lb;
        (
          match i with
            | 0 ->
              field_id := (
                (
                  read_snowflake
                ) p lb
              );
              bits0 := !bits0 lor 0x1;
            | 1 ->
              field_author := (
                (
                  read_user
                ) p lb
              );
              bits0 := !bits0 lor 0x2;
            | 2 ->
              field_channel_id := (
                (
                  read_snowflake
                ) p lb
              );
              bits0 := !bits0 lor 0x4;
            | 3 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_member := (
                  Some (
                    (
                      read_partial_member
                    ) p lb
                  )
                );
              )
            | 4 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_guild_id := (
                  Some (
                    (
                      read_snowflake
                    ) p lb
                  )
                );
              )
            | 5 ->
              field_content := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x8;
            | 6 ->
              field_timestamp := (
                (
                  Atdgen_runtime.Oj_run.read_string
                ) p lb
              );
              bits0 := !bits0 lor 0x10;
            | 7 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_edited_timestamp := (
                  Some (
                    (
                      Atdgen_runtime.Oj_run.read_string
                    ) p lb
                  )
                );
              )
            | 8 ->
              field_tts := (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              );
              bits0 := !bits0 lor 0x20;
            | 9 ->
              field_mention_everyone := (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              );
              bits0 := !bits0 lor 0x40;
            | 10 ->
              field_mentions := (
                (
                  read__4
                ) p lb
              );
              bits0 := !bits0 lor 0x80;
            | 11 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_role_mentions := (
                  Some (
                    (
                      read__4
                    ) p lb
                  )
                );
              )
            | 12 ->
              field_attachments := (
                (
                  read__6
                ) p lb
              );
              bits0 := !bits0 lor 0x100;
            | 13 ->
              field_embeds := (
                (
                  read__7
                ) p lb
              );
              bits0 := !bits0 lor 0x200;
            | 14 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_reactions := (
                  Some (
                    (
                      read__4
                    ) p lb
                  )
                );
              )
            | 15 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_nonce := (
                  Some (
                    (
                      read_snowflake
                    ) p lb
                  )
                );
              )
            | 16 ->
              field_pinned := (
                (
                  Atdgen_runtime.Oj_run.read_bool
                ) p lb
              );
              bits0 := !bits0 lor 0x400;
            | 17 ->
              if not (Yojson.Safe.read_null_if_possible p lb) then (
                field_webhook_id := (
                  Some (
                    (
                      read_snowflake
                    ) p lb
                  )
                );
              )
            | 18 ->
              field_kind := (
                (
                  Atdgen_runtime.Oj_run.read_int
                ) p lb
              );
              bits0 := !bits0 lor 0x800;
            | _ -> (
                Yojson.Safe.skip_json p lb
              )
        );
      done;
      assert false;
    with Yojson.End_of_object -> (
        if !bits0 <> 0xfff then Atdgen_runtime.Oj_run.missing_fields p [| !bits0 |] [| "id"; "author"; "channel_id"; "content"; "timestamp"; "tts"; "mention_everyone"; "mentions"; "attachments"; "embeds"; "pinned"; "kind" |];
        (
          {
            id = !field_id;
            author = !field_author;
            channel_id = !field_channel_id;
            member = !field_member;
            guild_id = !field_guild_id;
            content = !field_content;
            timestamp = !field_timestamp;
            edited_timestamp = !field_edited_timestamp;
            tts = !field_tts;
            mention_everyone = !field_mention_everyone;
            mentions = !field_mentions;
            role_mentions = !field_role_mentions;
            attachments = !field_attachments;
            embeds = !field_embeds;
            reactions = !field_reactions;
            nonce = !field_nonce;
            pinned = !field_pinned;
            webhook_id = !field_webhook_id;
            kind = !field_kind;
          }
         : t)
      )
)
let t_of_string s =
  read_t (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_reaction = (
  Reaction_j.write_t
)
let string_of_reaction ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_reaction ob x;
  Bi_outbuf.contents ob
let read_reaction = (
  Reaction_j.read_t
)
let reaction_of_string s =
  read_reaction (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
let write_member = (
  Member_j.write_t
)
let string_of_member ?(len = 1024) x =
  let ob = Bi_outbuf.create len in
  write_member ob x;
  Bi_outbuf.contents ob
let read_member = (
  Member_j.read_t
)
let member_of_string s =
  read_member (Yojson.Safe.init_lexer ()) (Lexing.from_string s)
