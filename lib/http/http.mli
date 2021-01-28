open Async

module Base : sig
    exception Invalid_Method

    val base_url : string

    val process_url : string -> Uri.t
    val process_request_body :
        ?files:(string * string) list ->
        Yojson.Safe.t ->
        Cohttp_async.Body.t
    val process_request_headers : ?multipart:bool -> unit -> Cohttp.Header.t

    val process_response :
        string ->
        Cohttp_async.Response.t * Cohttp_async.Body.t ->
        Yojson.Safe.t Deferred.Or_error.t

    val request :
        ?files:(string * string) list ->
        ?body:Yojson.Safe.t ->
        ?query:(string * string) list ->
        [ `Delete | `Get | `Patch | `Post | `Put ] ->
        string ->
        Yojson.Safe.t Deferred.Or_error.t
end

val get_gateway : unit -> Yojson.Safe.t Deferred.Or_error.t
val get_gateway_bot : unit -> Yojson.Safe.t Deferred.Or_error.t
val get_channel : int64 -> Channel_t.t Deferred.Or_error.t
val modify_channel :
    int64 -> Yojson.Safe.t -> Channel_t.t Deferred.Or_error.t
val delete_channel : int64 -> Channel_t.t Deferred.Or_error.t
val get_messages : int64 -> int -> string * int64 -> Message_t.t list Deferred.Or_error.t
val get_message : int64 -> int64 -> Message_t.t Deferred.Or_error.t
val create_message :
    ?files:(string * string) list -> int64 -> Yojson.Safe.t -> Message_t.t Deferred.Or_error.t
val create_reaction :
    int64 -> int64 -> string -> unit Deferred.Or_error.t
val delete_own_reaction :
    int64 -> int64 -> string -> unit Deferred.Or_error.t
val delete_reaction :
    int64 -> int64 -> string -> int64 -> unit Deferred.Or_error.t
val get_reactions :
    int64 -> int64 -> string -> User_t.t list Deferred.Or_error.t
val delete_reactions :
    int64 -> int64 -> unit Deferred.Or_error.t
val edit_message :
    int64 ->
    int64 -> Yojson.Safe.t -> Message_t.t Deferred.Or_error.t
val delete_message :
    int64 -> int64 -> unit Deferred.Or_error.t
val bulk_delete :
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val edit_channel_permissions :
    int64 ->
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val get_channel_invites : int64 -> Yojson.Safe.t Deferred.Or_error.t
val create_channel_invite :
    int64 -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val delete_channel_permission :
    int64 -> int64 -> unit Deferred.Or_error.t
val broadcast_typing : int64 -> unit Deferred.Or_error.t
val get_pinned_messages : int64 -> Message_t.t list Deferred.Or_error.t
val pin_message : int64 -> int64 -> unit Deferred.Or_error.t
val unpin_message : int64 -> int64 -> unit Deferred.Or_error.t
val group_recipient_add :
    int64 -> int64 -> unit Deferred.Or_error.t
val group_recipient_remove :
    int64 -> int64 -> unit Deferred.Or_error.t
val get_emojis : int64 -> Emoji.t list Deferred.Or_error.t
val get_emoji : int64 -> int64 -> Emoji.t Deferred.Or_error.t
val create_emoji :
    int64 -> Yojson.Safe.t -> Emoji.t Deferred.Or_error.t
val edit_emoji :
    int64 ->
    int64 -> Yojson.Safe.t -> Emoji.t Deferred.Or_error.t
val delete_emoji : int64 -> int64 -> unit Deferred.Or_error.t
val create_guild :
    Yojson.Safe.t -> Guild_t.t Deferred.Or_error.t
val get_guild : int64 -> Guild_t.t Deferred.Or_error.t
val edit_guild :
    int64 -> Yojson.Safe.t -> Guild_t.t Deferred.Or_error.t
val delete_guild : int64 -> unit Deferred.Or_error.t
val get_guild_channels : int64 -> Channel_t.t list Deferred.Or_error.t
val create_guild_channel :
    int64 -> Yojson.Safe.t -> Channel_t.t Deferred.Or_error.t
val modify_guild_channel_positions :
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val get_member : int64 -> int64 -> Member.t Deferred.Or_error.t
val get_members : int64 -> Member.t list Deferred.Or_error.t
val add_member :
    int64 ->
    int64 -> Yojson.Safe.t -> Member.t Deferred.Or_error.t
val edit_member :
    int64 ->
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val remove_member :
    int64 ->
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val change_nickname :
    int64 -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val add_member_role :
    int64 -> int64 -> int64 -> unit Deferred.Or_error.t
val remove_member_role :
    int64 -> int64 -> int64 -> unit Deferred.Or_error.t
val get_bans : int64 -> Ban.t list Deferred.Or_error.t
val get_ban : int64 -> int64 -> Ban.t Deferred.Or_error.t
val guild_ban_add :
    int64 ->
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val guild_ban_remove :
    int64 ->
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val get_roles : int64 -> Role_t.t list Deferred.Or_error.t
val guild_role_add :
    int64 -> Yojson.Safe.t -> Role_t.t Deferred.Or_error.t
val guild_roles_edit :
    int64 -> Yojson.Safe.t -> Role_t.t list Deferred.Or_error.t
val guild_role_edit :
    int64 ->
    int64 -> Yojson.Safe.t -> Role_t.t Deferred.Or_error.t
val guild_role_remove :
    int64 -> int64 -> unit Deferred.Or_error.t
val guild_prune_count :
    int64 -> int -> int Deferred.Or_error.t
val guild_prune_start :
    int64 -> int -> int Deferred.Or_error.t
val get_guild_voice_regions :
    int64 -> Yojson.Safe.t Deferred.Or_error.t
val get_guild_invites : int64 -> Yojson.Safe.t Deferred.Or_error.t
val get_integrations : int64 -> Yojson.Safe.t Deferred.Or_error.t
val add_integration :
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val edit_integration :
    int64 ->
    int64 -> Yojson.Safe.t -> unit Deferred.Or_error.t
val delete_integration :
    int64 -> int64 -> unit Deferred.Or_error.t
val sync_integration :
    int64 -> int64 -> unit Deferred.Or_error.t
val get_guild_embed : int64 -> Yojson.Safe.t Deferred.Or_error.t
val edit_guild_embed :
    int64 -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val get_vanity_url : int64 -> Yojson.Safe.t Deferred.Or_error.t
val get_invite : string -> Yojson.Safe.t Deferred.Or_error.t
val delete_invite : string -> Yojson.Safe.t Deferred.Or_error.t
val get_current_user : unit -> User_t.t Deferred.Or_error.t
val edit_current_user :
    Yojson.Safe.t -> User_t.t Deferred.Or_error.t
val get_guilds : unit -> Guild_t.t list Deferred.Or_error.t
val leave_guild : int64 -> unit Deferred.Or_error.t
val get_private_channels :
    unit -> Yojson.Safe.t Deferred.Or_error.t
val create_dm :
    Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val create_group_dm :
    Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val get_connections : unit -> Yojson.Safe.t Deferred.Or_error.t
val get_user : int64 -> User_t.t Deferred.Or_error.t
val get_voice_regions : unit -> Yojson.Safe.t Deferred.Or_error.t
val create_webhook :
    int64 -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val get_channel_webhooks : int64 -> Yojson.Safe.t Deferred.Or_error.t
val get_guild_webhooks : int64 -> Yojson.Safe.t Deferred.Or_error.t
val get_webhook : int64 -> Yojson.Safe.t Deferred.Or_error.t
val get_webhook_with_token :
    int64 -> string -> Yojson.Safe.t Deferred.Or_error.t
val edit_webhook :
    int64 -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val edit_webhook_with_token :
    int64 ->
    string -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val delete_webhook : int64 -> unit Deferred.Or_error.t
val delete_webhook_with_token :
    int64 -> string -> unit Deferred.Or_error.t
val execute_webhook :
    int64 ->
    string -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val execute_slack_webhook :
    int64 ->
    string -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val execute_git_webhook :
    int64 ->
    string -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val get_audit_logs :
    int64 -> Yojson.Safe.t -> Yojson.Safe.t Deferred.Or_error.t
val get_application_info : unit -> Yojson.Safe.t Deferred.Or_error.t