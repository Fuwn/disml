(** Endpoint formatters used internally. *)

val gateway : string
val gateway_bot : string
val channel : int64 -> string
val channel_messages : int64 -> string
val channel_message : int64 -> int64 -> string
val channel_reaction_me : int64 -> int64 -> string -> string
val channel_reaction : int64 -> int64 -> string -> int64 -> string
val channel_reactions_get : int64 -> int64 -> string -> string
val channel_reactions_delete : int64 -> int64 -> string
val channel_bulk_delete : int64 -> string
val channel_permission : int64 -> int64 -> string
val channel_permissions : int64 -> string
val channels : string
val channel_call_ring : int64 -> string
val channel_invites : int64 -> string
val channel_typing : int64 -> string
val channel_pins : int64 -> string
val channel_pin : int64 -> int64 -> string
val guilds : string
val guild : int64 -> string
val guild_channels : int64 -> string
val guild_members : int64 -> string
val guild_member : int64 -> int64 -> string
val guild_member_role : int64 -> int64 -> int64 -> string
val guild_bans : int64 -> string
val guild_ban : int64 -> int64 -> string
val guild_roles : int64 -> string
val guild_role : int64 -> int64 -> string
val guild_prune : int64 -> string
val guild_voice_regions : int64 -> string
val guild_invites : int64 -> string
val guild_integrations : int64 -> string
val guild_integration : int64 -> int64 -> string
val guild_integration_sync : int64 -> int64 -> string
val guild_embed : int64 -> string
val guild_emojis : int64 -> string
val guild_emoji : int64 -> int64 -> string
val webhooks_guild : int64 -> string
val webhooks_channel : int64 -> string
val webhook : int64 -> string
val webhook_token : int64 -> string -> string
val webhook_git : int64 -> string -> string
val webhook_slack : int64 -> string -> string
val user : int64 -> string
val me : string
val me_guilds : string
val me_guild : int64 -> string
val me_channels : string
val me_connections : string
val invite : string -> string
val regions : string
val application_information : string
val group_recipient : int64 -> int64 -> string
val guild_me_nick : int64 -> string
val guild_vanity_url : int64 -> string
val guild_audit_logs : int64 -> string
val cdn_embed_avatar : string -> string
val cdn_emoji : string -> string -> string
val cdn_icon : int64 -> string -> string -> string
val cdn_avatar : int64 -> string -> string -> string
val cdn_default_avatar : int64 -> string