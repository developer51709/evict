--
-- Evict database schema (schema-only dump, PostgreSQL 16 compatible).
--
-- Applied by hand; core/client/database/__init__.py does not run it.
--
--   psql "$DATABASE_URL" -f core/client/database/schema.sql
--
-- Ownership clauses were removed so this applies as any role (a fresh server
-- has no 'root'/'postgres' roles), and it contains no data.
--
--
-- PostgreSQL database dump
--

-- Dumped from database version 16.10
-- Dumped by pg_dump version 17.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY ticket.button DROP CONSTRAINT IF EXISTS button_guild_id_fkey;
ALTER TABLE IF EXISTS ONLY public.user_items DROP CONSTRAINT IF EXISTS user_items_item_id_fkey;
ALTER TABLE IF EXISTS ONLY public.starboard_entry DROP CONSTRAINT IF EXISTS starboard_entry_guild_id_emoji_fkey;
ALTER TABLE IF EXISTS ONLY public.poll_votes DROP CONSTRAINT IF EXISTS poll_votes_poll_id_fkey;
ALTER TABLE IF EXISTS ONLY public.employee_stats DROP CONSTRAINT IF EXISTS employee_stats_business_id_fkey;
ALTER TABLE IF EXISTS ONLY public.contracts DROP CONSTRAINT IF EXISTS contracts_business_id_fkey;
ALTER TABLE IF EXISTS ONLY public.clownboard_entry DROP CONSTRAINT IF EXISTS clownboard_entry_guild_id_emoji_fkey;
ALTER TABLE IF EXISTS ONLY public.business_stats DROP CONSTRAINT IF EXISTS business_stats_business_id_fkey;
ALTER TABLE IF EXISTS ONLY public.business_jobs DROP CONSTRAINT IF EXISTS business_jobs_business_id_fkey;
ALTER TABLE IF EXISTS ONLY music.playlist_tracks DROP CONSTRAINT IF EXISTS playlist_tracks_playlist_id_fkey;
ALTER TABLE IF EXISTS ONLY level.role DROP CONSTRAINT IF EXISTS role_guild_id_fkey;
ALTER TABLE IF EXISTS ONLY level.notification DROP CONSTRAINT IF EXISTS notification_guild_id_fkey;
ALTER TABLE IF EXISTS ONLY level.member DROP CONSTRAINT IF EXISTS member_guild_id_fkey;
ALTER TABLE IF EXISTS ONLY level.config DROP CONSTRAINT IF EXISTS config_guild_id_fkey;
ALTER TABLE IF EXISTS ONLY lastfm.tracks DROP CONSTRAINT IF EXISTS tracks_user_id_fkey;
ALTER TABLE IF EXISTS ONLY lastfm.crowns DROP CONSTRAINT IF EXISTS crowns_user_id_artist_fkey;
ALTER TABLE IF EXISTS ONLY lastfm.artists DROP CONSTRAINT IF EXISTS artists_user_id_fkey;
ALTER TABLE IF EXISTS ONLY lastfm.albums DROP CONSTRAINT IF EXISTS albums_user_id_fkey;
ALTER TABLE IF EXISTS ONLY voicemaster.configuration DROP CONSTRAINT IF EXISTS configuration_pkey;
ALTER TABLE IF EXISTS ONLY voicemaster.channels DROP CONSTRAINT IF EXISTS channels_pkey;
ALTER TABLE IF EXISTS ONLY voice.config DROP CONSTRAINT IF EXISTS config_guild_id_key;
ALTER TABLE IF EXISTS ONLY voice.channels DROP CONSTRAINT IF EXISTS channels_pkey;
ALTER TABLE IF EXISTS ONLY verification.settings DROP CONSTRAINT IF EXISTS settings_pkey;
ALTER TABLE IF EXISTS ONLY verification.sessions DROP CONSTRAINT IF EXISTS sessions_pkey;
ALTER TABLE IF EXISTS ONLY verification.logs DROP CONSTRAINT IF EXISTS logs_pkey;
ALTER TABLE IF EXISTS ONLY transcribe.rate_limit DROP CONSTRAINT IF EXISTS rate_limit_pkey;
ALTER TABLE IF EXISTS ONLY transcribe.channels DROP CONSTRAINT IF EXISTS channels_pkey;
ALTER TABLE IF EXISTS ONLY track.vanity DROP CONSTRAINT IF EXISTS vanity_pkey;
ALTER TABLE IF EXISTS ONLY track.username DROP CONSTRAINT IF EXISTS username_pkey;
ALTER TABLE IF EXISTS ONLY timer.purge DROP CONSTRAINT IF EXISTS purge_pkey;
ALTER TABLE IF EXISTS ONLY timer.message DROP CONSTRAINT IF EXISTS message_pkey;
ALTER TABLE IF EXISTS ONLY ticket.open DROP CONSTRAINT IF EXISTS open_pkey;
ALTER TABLE IF EXISTS ONLY ticket.config DROP CONSTRAINT IF EXISTS config_guild_id_key;
ALTER TABLE IF EXISTS ONLY ticket.button DROP CONSTRAINT IF EXISTS button_pkey;
ALTER TABLE IF EXISTS ONLY streaks.users DROP CONSTRAINT IF EXISTS users_pkey;
ALTER TABLE IF EXISTS ONLY streaks.restore_log DROP CONSTRAINT IF EXISTS restore_log_pkey;
ALTER TABLE IF EXISTS ONLY streaks.config DROP CONSTRAINT IF EXISTS config_pkey;
ALTER TABLE IF EXISTS ONLY stats.word_usage DROP CONSTRAINT IF EXISTS word_usage_pkey;
ALTER TABLE IF EXISTS ONLY stats.custom_commands DROP CONSTRAINT IF EXISTS custom_commands_pkey;
ALTER TABLE IF EXISTS ONLY stats.config DROP CONSTRAINT IF EXISTS config_pkey;
ALTER TABLE IF EXISTS ONLY statistics.daily DROP CONSTRAINT IF EXISTS daily_pkey;
ALTER TABLE IF EXISTS ONLY statistics.daily_channels DROP CONSTRAINT IF EXISTS daily_channels_pkey;
ALTER TABLE IF EXISTS ONLY snipe.ignore DROP CONSTRAINT IF EXISTS ignore_pkey;
ALTER TABLE IF EXISTS ONLY snipe.filter DROP CONSTRAINT IF EXISTS filter_guild_id_key;
ALTER TABLE IF EXISTS ONLY reskin.webhook DROP CONSTRAINT IF EXISTS webhook_pkey;
ALTER TABLE IF EXISTS ONLY reskin.config DROP CONSTRAINT IF EXISTS config_user_id_key;
ALTER TABLE IF EXISTS ONLY reposters.disabled DROP CONSTRAINT IF EXISTS disabled_pkey;
ALTER TABLE IF EXISTS ONLY public.whitelist DROP CONSTRAINT IF EXISTS whitelist_guild_id_key;
ALTER TABLE IF EXISTS ONLY public.welcome_message DROP CONSTRAINT IF EXISTS welcome_message_pkey;
ALTER TABLE IF EXISTS ONLY public.webhook DROP CONSTRAINT IF EXISTS webhook_pkey;
ALTER TABLE IF EXISTS ONLY public.warn_actions DROP CONSTRAINT IF EXISTS warn_actions_guild_id_threshold_key;
ALTER TABLE IF EXISTS ONLY public.vape DROP CONSTRAINT IF EXISTS vape_pkey;
ALTER TABLE IF EXISTS ONLY public.vanity_sniper DROP CONSTRAINT IF EXISTS vanity_sniper_guild_id_key;
ALTER TABLE IF EXISTS ONLY public.vanity DROP CONSTRAINT IF EXISTS vanity_guild_id_key;
ALTER TABLE IF EXISTS ONLY public.user_transactions DROP CONSTRAINT IF EXISTS user_transactions_pkey;
ALTER TABLE IF EXISTS ONLY public.user_items DROP CONSTRAINT IF EXISTS user_items_user_id_item_id_key;
ALTER TABLE IF EXISTS ONLY public.user_cards DROP CONSTRAINT IF EXISTS user_cards_user_id_card_id_key;
ALTER TABLE IF EXISTS ONLY public.tracker DROP CONSTRAINT IF EXISTS tracker_pkey;
ALTER TABLE IF EXISTS ONLY public.timezones DROP CONSTRAINT IF EXISTS timezones_user_id_key;
ALTER TABLE IF EXISTS ONLY public.thread DROP CONSTRAINT IF EXISTS thread_pkey;
ALTER TABLE IF EXISTS ONLY public.tags DROP CONSTRAINT IF EXISTS tags_guild_id_name_key;
ALTER TABLE IF EXISTS ONLY public.tag_aliases DROP CONSTRAINT IF EXISTS tag_aliases_guild_id_alias_key;
ALTER TABLE IF EXISTS ONLY public.suggestion_votes DROP CONSTRAINT IF EXISTS suggestion_votes_message_id_user_id_key;
ALTER TABLE IF EXISTS ONLY public.sticky_message DROP CONSTRAINT IF EXISTS sticky_message_pkey;
ALTER TABLE IF EXISTS ONLY public.starboard DROP CONSTRAINT IF EXISTS starboard_pkey;
ALTER TABLE IF EXISTS ONLY public.starboard_entry DROP CONSTRAINT IF EXISTS starboard_entry_pkey;
ALTER TABLE IF EXISTS ONLY public.socials_saved_gradients DROP CONSTRAINT IF EXISTS socials_saved_gradients_pkey;
ALTER TABLE IF EXISTS ONLY public.socials_saved_colors DROP CONSTRAINT IF EXISTS socials_saved_colors_user_id_name_key;
ALTER TABLE IF EXISTS ONLY public.socials DROP CONSTRAINT IF EXISTS socials_pkey;
ALTER TABLE IF EXISTS ONLY public.socials_gradients DROP CONSTRAINT IF EXISTS socials_gradients_pkey;
ALTER TABLE IF EXISTS ONLY public.social_links DROP CONSTRAINT IF EXISTS social_links_user_id_type_key;
ALTER TABLE IF EXISTS ONLY public.social_links DROP CONSTRAINT IF EXISTS social_links_pkey;
ALTER TABLE IF EXISTS ONLY public.shop_items DROP CONSTRAINT IF EXISTS shop_items_pkey;
ALTER TABLE IF EXISTS ONLY public.shop_items DROP CONSTRAINT IF EXISTS shop_items_name_key;
ALTER TABLE IF EXISTS ONLY public.settings DROP CONSTRAINT IF EXISTS settings_pkey;
ALTER TABLE IF EXISTS ONLY public.roleplay DROP CONSTRAINT IF EXISTS roleplay_pkey;
ALTER TABLE IF EXISTS ONLY public.role_shops DROP CONSTRAINT IF EXISTS role_shops_pkey;
ALTER TABLE IF EXISTS ONLY public.response_trigger DROP CONSTRAINT IF EXISTS response_trigger_pkey;
ALTER TABLE IF EXISTS ONLY public.reskin DROP CONSTRAINT IF EXISTS reskin_pkey;
ALTER TABLE IF EXISTS ONLY public.reaction_trigger DROP CONSTRAINT IF EXISTS reaction_trigger_pkey;
ALTER TABLE IF EXISTS ONLY public.reaction_role DROP CONSTRAINT IF EXISTS reaction_role_pkey;
ALTER TABLE IF EXISTS ONLY public.quoter DROP CONSTRAINT IF EXISTS quoter_guild_id_key;
ALTER TABLE IF EXISTS ONLY public.pubsub DROP CONSTRAINT IF EXISTS pubsub_id_key;
ALTER TABLE IF EXISTS ONLY public.publisher DROP CONSTRAINT IF EXISTS publisher_pkey;
ALTER TABLE IF EXISTS ONLY public.prefix DROP CONSTRAINT IF EXISTS prefix_pkey;
ALTER TABLE IF EXISTS ONLY public.polls DROP CONSTRAINT IF EXISTS polls_pkey;
ALTER TABLE IF EXISTS ONLY public.poll_votes DROP CONSTRAINT IF EXISTS poll_votes_poll_id_user_id_key;
ALTER TABLE IF EXISTS ONLY public.poll_votes DROP CONSTRAINT IF EXISTS poll_votes_pkey;
ALTER TABLE IF EXISTS ONLY public.pets DROP CONSTRAINT IF EXISTS pets_pkey;
ALTER TABLE IF EXISTS ONLY public.pet_trades DROP CONSTRAINT IF EXISTS pet_trades_pkey;
ALTER TABLE IF EXISTS ONLY public.pet_adventures DROP CONSTRAINT IF EXISTS pet_adventures_pkey;
ALTER TABLE IF EXISTS ONLY public.payment DROP CONSTRAINT IF EXISTS payment_guild_id_key;
ALTER TABLE IF EXISTS ONLY public.message_ranks DROP CONSTRAINT IF EXISTS message_ranks_pkey;
ALTER TABLE IF EXISTS ONLY public.member_stats DROP CONSTRAINT IF EXISTS member_stats_pkey;
ALTER TABLE IF EXISTS ONLY public.lovense_devices DROP CONSTRAINT IF EXISTS lovense_devices_pkey;
ALTER TABLE IF EXISTS ONLY public.lovense_consent DROP CONSTRAINT IF EXISTS lovense_consent_pkey;
ALTER TABLE IF EXISTS ONLY public.lovense_config DROP CONSTRAINT IF EXISTS lovense_config_pkey;
ALTER TABLE IF EXISTS ONLY public.lottery_history DROP CONSTRAINT IF EXISTS lottery_history_pkey;
ALTER TABLE IF EXISTS ONLY public.logging DROP CONSTRAINT IF EXISTS logging_pkey;
ALTER TABLE IF EXISTS ONLY public.logging_history DROP CONSTRAINT IF EXISTS logging_history_pkey;
ALTER TABLE IF EXISTS ONLY public.jobs DROP CONSTRAINT IF EXISTS jobs_pkey;
ALTER TABLE IF EXISTS ONLY public.job_applications DROP CONSTRAINT IF EXISTS job_applications_pkey;
ALTER TABLE IF EXISTS ONLY public.invite_tracking DROP CONSTRAINT IF EXISTS invite_tracking_pkey;
ALTER TABLE IF EXISTS ONLY public.invite_stats DROP CONSTRAINT IF EXISTS invite_stats_pkey;
ALTER TABLE IF EXISTS ONLY public.invite_rewards DROP CONSTRAINT IF EXISTS invite_rewards_pkey;
ALTER TABLE IF EXISTS ONLY public.invite_config DROP CONSTRAINT IF EXISTS invite_config_pkey;
ALTER TABLE IF EXISTS ONLY public.incidents DROP CONSTRAINT IF EXISTS incidents_pkey;
ALTER TABLE IF EXISTS ONLY public.hourly_metrics DROP CONSTRAINT IF EXISTS hourly_metrics_pkey;
ALTER TABLE IF EXISTS ONLY public.highlights DROP CONSTRAINT IF EXISTS highlights_pkey;
ALTER TABLE IF EXISTS ONLY public.hardban DROP CONSTRAINT IF EXISTS hardban_pkey;
ALTER TABLE IF EXISTS ONLY public.guildblacklist DROP CONSTRAINT IF EXISTS guildblacklist_guild_id_key;
ALTER TABLE IF EXISTS ONLY public.guild_verification DROP CONSTRAINT IF EXISTS guild_verification_pkey;
ALTER TABLE IF EXISTS ONLY public.goodbye_message DROP CONSTRAINT IF EXISTS goodbye_message_pkey;
ALTER TABLE IF EXISTS ONLY public.giveaway_settings DROP CONSTRAINT IF EXISTS giveaway_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.gift_logs DROP CONSTRAINT IF EXISTS gift_logs_pkey;
ALTER TABLE IF EXISTS ONLY public.gallery DROP CONSTRAINT IF EXISTS gallery_pkey;
ALTER TABLE IF EXISTS ONLY public.forcenick DROP CONSTRAINT IF EXISTS forcenick_pkey;
ALTER TABLE IF EXISTS ONLY public.feedback DROP CONSTRAINT IF EXISTS feedback_pkey;
ALTER TABLE IF EXISTS ONLY public.fake_permissions DROP CONSTRAINT IF EXISTS fake_permissions_pkey;
ALTER TABLE IF EXISTS ONLY public.employee_stats DROP CONSTRAINT IF EXISTS employee_stats_pkey;
ALTER TABLE IF EXISTS ONLY public.economy DROP CONSTRAINT IF EXISTS economy_pkey;
ALTER TABLE IF EXISTS ONLY public.economy_access DROP CONSTRAINT IF EXISTS economy_access_pkey;
ALTER TABLE IF EXISTS ONLY public.donators DROP CONSTRAINT IF EXISTS donators_pkey;
ALTER TABLE IF EXISTS ONLY public.dockets DROP CONSTRAINT IF EXISTS dockets_pkey;
ALTER TABLE IF EXISTS ONLY public.docket_channels DROP CONSTRAINT IF EXISTS docket_channels_pkey;
ALTER TABLE IF EXISTS ONLY public.dalle_credits DROP CONSTRAINT IF EXISTS dalle_credits_pkey;
ALTER TABLE IF EXISTS ONLY public.daily_stats DROP CONSTRAINT IF EXISTS daily_stats_pkey;
ALTER TABLE IF EXISTS ONLY public.daily_metrics DROP CONSTRAINT IF EXISTS daily_metrics_pkey;
ALTER TABLE IF EXISTS ONLY public.daily_messages DROP CONSTRAINT IF EXISTS daily_messages_pkey;
ALTER TABLE IF EXISTS ONLY public.crypto DROP CONSTRAINT IF EXISTS crypto_pkey;
ALTER TABLE IF EXISTS ONLY public.counter DROP CONSTRAINT IF EXISTS counter_pkey;
ALTER TABLE IF EXISTS ONLY public.contracts DROP CONSTRAINT IF EXISTS contracts_pkey;
ALTER TABLE IF EXISTS ONLY public.contracts DROP CONSTRAINT IF EXISTS contracts_employee_id_key;
ALTER TABLE IF EXISTS ONLY public.config DROP CONSTRAINT IF EXISTS config_pkey;
ALTER TABLE IF EXISTS ONLY public.clownboard DROP CONSTRAINT IF EXISTS clownboard_pkey;
ALTER TABLE IF EXISTS ONLY public.clownboard_entry DROP CONSTRAINT IF EXISTS clownboard_entry_pkey;
ALTER TABLE IF EXISTS ONLY public.card_market DROP CONSTRAINT IF EXISTS card_market_pkey;
ALTER TABLE IF EXISTS ONLY public.card_drop_channels DROP CONSTRAINT IF EXISTS card_drop_channels_pkey;
ALTER TABLE IF EXISTS ONLY public.card_daily DROP CONSTRAINT IF EXISTS card_daily_pkey;
ALTER TABLE IF EXISTS ONLY public.businesses DROP CONSTRAINT IF EXISTS businesses_pkey;
ALTER TABLE IF EXISTS ONLY public.businesses DROP CONSTRAINT IF EXISTS businesses_owner_id_key;
ALTER TABLE IF EXISTS ONLY public.businesses DROP CONSTRAINT IF EXISTS businesses_name_key;
ALTER TABLE IF EXISTS ONLY public.business_stats DROP CONSTRAINT IF EXISTS business_stats_pkey;
ALTER TABLE IF EXISTS ONLY public.business_jobs DROP CONSTRAINT IF EXISTS business_jobs_pkey;
ALTER TABLE IF EXISTS ONLY public.boosters_lost DROP CONSTRAINT IF EXISTS boosters_lost_pkey;
ALTER TABLE IF EXISTS ONLY public.booster_role DROP CONSTRAINT IF EXISTS booster_role_pkey;
ALTER TABLE IF EXISTS ONLY public.boost_message DROP CONSTRAINT IF EXISTS boost_message_pkey;
ALTER TABLE IF EXISTS ONLY public.boost_history DROP CONSTRAINT IF EXISTS boost_history_pkey;
ALTER TABLE IF EXISTS ONLY public.blunt DROP CONSTRAINT IF EXISTS blunt_pkey;
ALTER TABLE IF EXISTS ONLY public.blacklist DROP CONSTRAINT IF EXISTS blacklist_user_id_key;
ALTER TABLE IF EXISTS ONLY public.birthdays DROP CONSTRAINT IF EXISTS birthdays_user_id_key;
ALTER TABLE IF EXISTS ONLY public.beta_dashboard DROP CONSTRAINT IF EXISTS beta_dashboard_pkey;
ALTER TABLE IF EXISTS ONLY public.backup DROP CONSTRAINT IF EXISTS backup_pkey;
ALTER TABLE IF EXISTS ONLY public.avatar_history DROP CONSTRAINT IF EXISTS avatar_history_user_id_avatar_url_key;
ALTER TABLE IF EXISTS ONLY public.avatar_history_settings DROP CONSTRAINT IF EXISTS avatar_history_settings_pkey;
ALTER TABLE IF EXISTS ONLY public.avatar_current DROP CONSTRAINT IF EXISTS avatar_current_pkey;
ALTER TABLE IF EXISTS ONLY public.auto_role DROP CONSTRAINT IF EXISTS auto_role_pkey;
ALTER TABLE IF EXISTS ONLY public.appeals DROP CONSTRAINT IF EXISTS appeals_pkey;
ALTER TABLE IF EXISTS ONLY public.appeal_templates DROP CONSTRAINT IF EXISTS appeal_templates_pkey;
ALTER TABLE IF EXISTS ONLY public.appeal_config DROP CONSTRAINT IF EXISTS appeal_config_pkey;
ALTER TABLE IF EXISTS ONLY public.antiraid DROP CONSTRAINT IF EXISTS antiraid_pkey;
ALTER TABLE IF EXISTS ONLY public.antinuke DROP CONSTRAINT IF EXISTS antinuke_guild_id_key;
ALTER TABLE IF EXISTS ONLY public.aliases DROP CONSTRAINT IF EXISTS aliases_pkey;
ALTER TABLE IF EXISTS ONLY public.afk DROP CONSTRAINT IF EXISTS afk_user_id_key;
ALTER TABLE IF EXISTS ONLY public.access_tokens DROP CONSTRAINT IF EXISTS access_tokens_pkey;
ALTER TABLE IF EXISTS ONLY porn.config DROP CONSTRAINT IF EXISTS config_pkey;
ALTER TABLE IF EXISTS ONLY music.playlists DROP CONSTRAINT IF EXISTS playlists_pkey;
ALTER TABLE IF EXISTS ONLY music.playlist_tracks DROP CONSTRAINT IF EXISTS playlist_tracks_pkey;
ALTER TABLE IF EXISTS ONLY music.history DROP CONSTRAINT IF EXISTS history_pkey;
ALTER TABLE IF EXISTS ONLY level.role DROP CONSTRAINT IF EXISTS role_role_id_key;
ALTER TABLE IF EXISTS ONLY level.role DROP CONSTRAINT IF EXISTS role_pkey;
ALTER TABLE IF EXISTS ONLY level.notification DROP CONSTRAINT IF EXISTS notification_pkey;
ALTER TABLE IF EXISTS ONLY level.member DROP CONSTRAINT IF EXISTS member_pkey;
ALTER TABLE IF EXISTS ONLY level.config DROP CONSTRAINT IF EXISTS config_guild_id_key;
ALTER TABLE IF EXISTS ONLY lastfm.tracks DROP CONSTRAINT IF EXISTS tracks_pkey;
ALTER TABLE IF EXISTS ONLY lastfm.hidden DROP CONSTRAINT IF EXISTS hidden_pkey;
ALTER TABLE IF EXISTS ONLY lastfm.crowns DROP CONSTRAINT IF EXISTS crowns_pkey;
ALTER TABLE IF EXISTS ONLY lastfm.crown_updates DROP CONSTRAINT IF EXISTS crown_updates_pkey;
ALTER TABLE IF EXISTS ONLY lastfm.config DROP CONSTRAINT IF EXISTS config_user_id_key;
ALTER TABLE IF EXISTS ONLY lastfm.artists DROP CONSTRAINT IF EXISTS artists_pkey;
ALTER TABLE IF EXISTS ONLY lastfm.albums DROP CONSTRAINT IF EXISTS albums_pkey;
ALTER TABLE IF EXISTS ONLY joindm.config DROP CONSTRAINT IF EXISTS config_pkey;
ALTER TABLE IF EXISTS ONLY invoke_history.commands DROP CONSTRAINT IF EXISTS commands_pkey;
ALTER TABLE IF EXISTS ONLY history.moderation DROP CONSTRAINT IF EXISTS moderation_pkey;
ALTER TABLE IF EXISTS ONLY fun.wyr_channels DROP CONSTRAINT IF EXISTS wyr_channels_pkey;
ALTER TABLE IF EXISTS ONLY fortnite.rotation DROP CONSTRAINT IF EXISTS rotation_guild_id_key;
ALTER TABLE IF EXISTS ONLY fortnite.reminder DROP CONSTRAINT IF EXISTS reminder_pkey;
ALTER TABLE IF EXISTS ONLY fortnite."authorization" DROP CONSTRAINT IF EXISTS authorization_user_id_key;
ALTER TABLE IF EXISTS ONLY feeds.youtube DROP CONSTRAINT IF EXISTS youtube_pkey;
ALTER TABLE IF EXISTS ONLY feeds.twitter DROP CONSTRAINT IF EXISTS twitter_pkey;
ALTER TABLE IF EXISTS ONLY feeds.tiktok DROP CONSTRAINT IF EXISTS tiktok_pkey;
ALTER TABLE IF EXISTS ONLY feeds.soundcloud DROP CONSTRAINT IF EXISTS soundcloud_pkey;
ALTER TABLE IF EXISTS ONLY feeds.reddit DROP CONSTRAINT IF EXISTS reddit_pkey;
ALTER TABLE IF EXISTS ONLY feeds.pinterest DROP CONSTRAINT IF EXISTS pinterest_pkey;
ALTER TABLE IF EXISTS ONLY feeds.instagram DROP CONSTRAINT IF EXISTS instagram_pkey;
ALTER TABLE IF EXISTS ONLY family.profiles DROP CONSTRAINT IF EXISTS profiles_pkey;
ALTER TABLE IF EXISTS ONLY family.members DROP CONSTRAINT IF EXISTS members_pkey;
ALTER TABLE IF EXISTS ONLY family.marriages DROP CONSTRAINT IF EXISTS marriages_pkey;
ALTER TABLE IF EXISTS ONLY economy_schema.transactions DROP CONSTRAINT IF EXISTS transactions_pkey;
ALTER TABLE IF EXISTS ONLY economy.transactions DROP CONSTRAINT IF EXISTS transactions_pkey;
ALTER TABLE IF EXISTS ONLY disboard.config DROP CONSTRAINT IF EXISTS config_guild_id_key;
ALTER TABLE IF EXISTS ONLY counting.config DROP CONSTRAINT IF EXISTS config_pkey;
ALTER TABLE IF EXISTS ONLY commands.restricted DROP CONSTRAINT IF EXISTS restricted_pkey;
ALTER TABLE IF EXISTS ONLY commands.ignore DROP CONSTRAINT IF EXISTS ignore_pkey;
ALTER TABLE IF EXISTS ONLY commands.disabled DROP CONSTRAINT IF EXISTS disabled_pkey;
ALTER TABLE IF EXISTS ONLY auto.media DROP CONSTRAINT IF EXISTS unique_media_config;
ALTER TABLE IF EXISTS ONLY auto.media DROP CONSTRAINT IF EXISTS media_pkey;
ALTER TABLE IF EXISTS ONLY audio.statistics DROP CONSTRAINT IF EXISTS statistics_pkey;
ALTER TABLE IF EXISTS ONLY audio.recently_played DROP CONSTRAINT IF EXISTS recently_played_pkey;
ALTER TABLE IF EXISTS ONLY audio.playlists DROP CONSTRAINT IF EXISTS playlists_pkey;
ALTER TABLE IF EXISTS ONLY audio.playlists DROP CONSTRAINT IF EXISTS playlists_guild_id_user_id_playlist_url_key;
ALTER TABLE IF EXISTS ONLY audio.playlist_tracks DROP CONSTRAINT IF EXISTS playlist_tracks_pkey;
ALTER TABLE IF EXISTS ONLY audio.playlist_tracks DROP CONSTRAINT IF EXISTS playlist_tracks_guild_id_user_id_playlist_url_track_uri_key;
ALTER TABLE IF EXISTS ONLY audio.config DROP CONSTRAINT IF EXISTS config_guild_id_key;
ALTER TABLE IF EXISTS ONLY alerts.twitch DROP CONSTRAINT IF EXISTS twitch_pkey;
ALTER TABLE IF EXISTS verification.logs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS streaks.restore_log ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.user_transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.socials_saved_gradients ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.socials_gradients ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.social_links ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.shop_items ALTER COLUMN item_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.poll_votes ALTER COLUMN vote_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pets ALTER COLUMN pet_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pet_trades ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.pet_adventures ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.lottery_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.logging_history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.job_applications ALTER COLUMN application_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.gift_logs ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.dockets ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS public.card_market ALTER COLUMN listing_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.businesses ALTER COLUMN business_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.business_jobs ALTER COLUMN job_id DROP DEFAULT;
ALTER TABLE IF EXISTS public.appeals ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS music.playlists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS music.playlist_tracks ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS music.history ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS invoke_history.commands ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS history.moderation ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS economy_schema.transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS economy.transactions ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS auto.media ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS audio.recently_played ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS audio.playlists ALTER COLUMN id DROP DEFAULT;
ALTER TABLE IF EXISTS audio.playlist_tracks ALTER COLUMN id DROP DEFAULT;
DROP TABLE IF EXISTS voicemaster.configuration;
DROP TABLE IF EXISTS voicemaster.channels;
DROP TABLE IF EXISTS voice.config;
DROP TABLE IF EXISTS voice.channels;
DROP TABLE IF EXISTS verification.settings;
DROP TABLE IF EXISTS verification.sessions;
DROP SEQUENCE IF EXISTS verification.logs_id_seq;
DROP TABLE IF EXISTS verification.logs;
DROP TABLE IF EXISTS transcribe.rate_limit;
DROP TABLE IF EXISTS transcribe.channels;
DROP TABLE IF EXISTS track.vanity;
DROP TABLE IF EXISTS track.username;
DROP TABLE IF EXISTS timer.purge;
DROP TABLE IF EXISTS timer.message;
DROP TABLE IF EXISTS ticket.open;
DROP TABLE IF EXISTS ticket.config;
DROP TABLE IF EXISTS ticket.button;
DROP TABLE IF EXISTS streaks.users;
DROP SEQUENCE IF EXISTS streaks.restore_log_id_seq;
DROP TABLE IF EXISTS streaks.restore_log;
DROP TABLE IF EXISTS streaks.config;
DROP TABLE IF EXISTS stats.word_usage;
DROP TABLE IF EXISTS stats.custom_commands;
DROP TABLE IF EXISTS stats.config;
DROP TABLE IF EXISTS statistics.daily_channels;
DROP TABLE IF EXISTS statistics.daily;
DROP TABLE IF EXISTS snipe.ignore;
DROP TABLE IF EXISTS snipe.filter;
DROP TABLE IF EXISTS reskin.webhook;
DROP TABLE IF EXISTS reskin.config;
DROP TABLE IF EXISTS reposters.disabled;
DROP TABLE IF EXISTS public.whitelist;
DROP TABLE IF EXISTS public.welcome_message;
DROP TABLE IF EXISTS public.webhook;
DROP TABLE IF EXISTS public.warn_actions;
DROP TABLE IF EXISTS public.vape;
DROP TABLE IF EXISTS public.vanity_sniper;
DROP TABLE IF EXISTS public.vanity;
DROP TABLE IF EXISTS public.uwulock;
DROP SEQUENCE IF EXISTS public.user_transactions_id_seq;
DROP TABLE IF EXISTS public.user_transactions;
DROP TABLE IF EXISTS public.user_items;
DROP TABLE IF EXISTS public.user_cards;
DROP TABLE IF EXISTS public.tracker;
DROP TABLE IF EXISTS public.timezones;
DROP TABLE IF EXISTS public.thread;
DROP TABLE IF EXISTS public.tags;
DROP TABLE IF EXISTS public.tag_aliases;
DROP TABLE IF EXISTS public.suggestion_votes;
DROP TABLE IF EXISTS public.suggestion_entries;
DROP TABLE IF EXISTS public.suggestion;
DROP TABLE IF EXISTS public.sticky_message;
DROP TABLE IF EXISTS public.starboard_entry;
DROP TABLE IF EXISTS public.starboard;
DROP SEQUENCE IF EXISTS public.socials_saved_gradients_id_seq;
DROP TABLE IF EXISTS public.socials_saved_gradients;
DROP TABLE IF EXISTS public.socials_saved_colors;
DROP SEQUENCE IF EXISTS public.socials_gradients_id_seq;
DROP TABLE IF EXISTS public.socials_gradients;
DROP TABLE IF EXISTS public.socials_details;
DROP TABLE IF EXISTS public.socials;
DROP SEQUENCE IF EXISTS public.social_links_id_seq;
DROP TABLE IF EXISTS public.social_links;
DROP TABLE IF EXISTS public.shutup;
DROP SEQUENCE IF EXISTS public.shop_items_item_id_seq;
DROP TABLE IF EXISTS public.shop_items;
DROP TABLE IF EXISTS public.settings;
DROP TABLE IF EXISTS public.selfprefix;
DROP TABLE IF EXISTS public.roleplay;
DROP TABLE IF EXISTS public.role_shops;
DROP TABLE IF EXISTS public.response_trigger;
DROP TABLE IF EXISTS public.reskin_user;
DROP TABLE IF EXISTS public.reskin;
DROP TABLE IF EXISTS public.reminders;
DROP TABLE IF EXISTS public.reaction_trigger;
DROP TABLE IF EXISTS public.reaction_role;
DROP TABLE IF EXISTS public.quoter;
DROP TABLE IF EXISTS public.pubsub;
DROP TABLE IF EXISTS public.publisher;
DROP TABLE IF EXISTS public.prefixex;
DROP TABLE IF EXISTS public.prefix;
DROP TABLE IF EXISTS public.polls;
DROP SEQUENCE IF EXISTS public.poll_votes_vote_id_seq;
DROP TABLE IF EXISTS public.poll_votes;
DROP TABLE IF EXISTS public.pingonjoin;
DROP SEQUENCE IF EXISTS public.pets_pet_id_seq;
DROP TABLE IF EXISTS public.pets;
DROP SEQUENCE IF EXISTS public.pet_trades_id_seq;
DROP TABLE IF EXISTS public.pet_trades;
DROP SEQUENCE IF EXISTS public.pet_adventures_id_seq;
DROP TABLE IF EXISTS public.pet_adventures;
DROP TABLE IF EXISTS public.payment;
DROP TABLE IF EXISTS public.name_history;
DROP TABLE IF EXISTS public.mod;
DROP TABLE IF EXISTS public.message_ranks;
DROP TABLE IF EXISTS public.member_stats;
DROP TABLE IF EXISTS public.lovense_shares;
DROP TABLE IF EXISTS public.lovense_devices;
DROP TABLE IF EXISTS public.lovense_consent;
DROP TABLE IF EXISTS public.lovense_connections;
DROP TABLE IF EXISTS public.lovense_config;
DROP SEQUENCE IF EXISTS public.lottery_history_id_seq;
DROP TABLE IF EXISTS public.lottery_history;
DROP SEQUENCE IF EXISTS public.logging_history_id_seq;
DROP TABLE IF EXISTS public.logging_history;
DROP TABLE IF EXISTS public.logging;
DROP TABLE IF EXISTS public.jobs;
DROP SEQUENCE IF EXISTS public.job_applications_application_id_seq;
DROP TABLE IF EXISTS public.job_applications;
DROP TABLE IF EXISTS public.jail;
DROP TABLE IF EXISTS public.invite_tracking;
DROP TABLE IF EXISTS public.invite_stats;
DROP TABLE IF EXISTS public.invite_rewards;
DROP TABLE IF EXISTS public.invite_config;
DROP TABLE IF EXISTS public.incidents;
DROP TABLE IF EXISTS public.immune;
DROP TABLE IF EXISTS public.hourly_metrics;
DROP TABLE IF EXISTS public.highlights;
DROP TABLE IF EXISTS public.hardban;
DROP TABLE IF EXISTS public.guildblacklist;
DROP TABLE IF EXISTS public.guild_verification;
DROP TABLE IF EXISTS public.goodbye_message;
DROP TABLE IF EXISTS public.gnames;
DROP TABLE IF EXISTS public.giveaway_settings;
DROP TABLE IF EXISTS public.giveaway;
DROP SEQUENCE IF EXISTS public.gift_logs_id_seq;
DROP TABLE IF EXISTS public.gift_logs;
DROP TABLE IF EXISTS public.gallery;
DROP TABLE IF EXISTS public.forcenick;
DROP TABLE IF EXISTS public.feedback;
DROP TABLE IF EXISTS public.fake_permissions;
DROP TABLE IF EXISTS public.employee_stats;
DROP TABLE IF EXISTS public.economy_access;
DROP TABLE IF EXISTS public.economy;
DROP TABLE IF EXISTS public.donators;
DROP SEQUENCE IF EXISTS public.dockets_id_seq;
DROP TABLE IF EXISTS public.dockets;
DROP TABLE IF EXISTS public.docket_channels;
DROP TABLE IF EXISTS public.dalle_credits;
DROP TABLE IF EXISTS public.daily_stats;
DROP TABLE IF EXISTS public.daily_metrics;
DROP TABLE IF EXISTS public.daily_messages;
DROP TABLE IF EXISTS public.crypto;
DROP TABLE IF EXISTS public.counter;
DROP TABLE IF EXISTS public.contracts;
DROP TABLE IF EXISTS public.config;
DROP TABLE IF EXISTS public.confess_replies;
DROP TABLE IF EXISTS public.confess_mute;
DROP TABLE IF EXISTS public.confess_members;
DROP TABLE IF EXISTS public.confess_blacklist;
DROP TABLE IF EXISTS public.confess;
DROP TABLE IF EXISTS public.clownboard_entry;
DROP TABLE IF EXISTS public.clownboard;
DROP TABLE IF EXISTS public.cases;
DROP SEQUENCE IF EXISTS public.card_market_listing_id_seq;
DROP TABLE IF EXISTS public.card_market;
DROP TABLE IF EXISTS public.card_drop_channels;
DROP TABLE IF EXISTS public.card_daily;
DROP SEQUENCE IF EXISTS public.businesses_business_id_seq;
DROP TABLE IF EXISTS public.businesses;
DROP TABLE IF EXISTS public.business_stats;
DROP SEQUENCE IF EXISTS public.business_jobs_job_id_seq;
DROP TABLE IF EXISTS public.business_jobs;
DROP TABLE IF EXISTS public.boosters_lost;
DROP TABLE IF EXISTS public.booster_role;
DROP TABLE IF EXISTS public.boost_message;
DROP TABLE IF EXISTS public.boost_history;
DROP TABLE IF EXISTS public.blunt;
DROP TABLE IF EXISTS public.blacklist;
DROP TABLE IF EXISTS public.birthdays;
DROP TABLE IF EXISTS public.beta_dashboard;
DROP TABLE IF EXISTS public.backup;
DROP TABLE IF EXISTS public.avatar_history_settings;
DROP TABLE IF EXISTS public.avatar_history;
DROP TABLE IF EXISTS public.avatar_current;
DROP TABLE IF EXISTS public.autokick;
DROP TABLE IF EXISTS public.auto_role;
DROP SEQUENCE IF EXISTS public.appeals_id_seq;
DROP TABLE IF EXISTS public.appeals;
DROP TABLE IF EXISTS public.appeal_templates;
DROP TABLE IF EXISTS public.appeal_config;
DROP TABLE IF EXISTS public.antiraid;
DROP TABLE IF EXISTS public.antinuke;
DROP TABLE IF EXISTS public.aliases;
DROP TABLE IF EXISTS public.afk;
DROP TABLE IF EXISTS public.access_tokens;
DROP TABLE IF EXISTS porn.config;
DROP SEQUENCE IF EXISTS music.playlists_id_seq;
DROP TABLE IF EXISTS music.playlists;
DROP SEQUENCE IF EXISTS music.playlist_tracks_id_seq;
DROP TABLE IF EXISTS music.playlist_tracks;
DROP SEQUENCE IF EXISTS music.history_id_seq;
DROP TABLE IF EXISTS music.history;
DROP TABLE IF EXISTS level.role;
DROP TABLE IF EXISTS level.notification;
DROP TABLE IF EXISTS level.member;
DROP TABLE IF EXISTS level.config;
DROP TABLE IF EXISTS lastfm.tracks;
DROP TABLE IF EXISTS lastfm.hidden;
DROP TABLE IF EXISTS lastfm.crowns;
DROP TABLE IF EXISTS lastfm.crown_updates;
DROP TABLE IF EXISTS lastfm.config;
DROP TABLE IF EXISTS lastfm.artists;
DROP TABLE IF EXISTS lastfm.albums;
DROP TABLE IF EXISTS joindm.config;
DROP SEQUENCE IF EXISTS invoke_history.commands_id_seq;
DROP TABLE IF EXISTS invoke_history.commands;
DROP SEQUENCE IF EXISTS history.moderation_id_seq;
DROP TABLE IF EXISTS history.moderation;
DROP TABLE IF EXISTS fun.wyr_channels;
DROP TABLE IF EXISTS fortnite.rotation;
DROP TABLE IF EXISTS fortnite.reminder;
DROP TABLE IF EXISTS fortnite."authorization";
DROP TABLE IF EXISTS feeds.youtube;
DROP TABLE IF EXISTS feeds.twitter;
DROP TABLE IF EXISTS feeds.tiktok;
DROP TABLE IF EXISTS feeds.soundcloud;
DROP TABLE IF EXISTS feeds.reddit;
DROP TABLE IF EXISTS feeds.pinterest;
DROP TABLE IF EXISTS feeds.instagram;
DROP TABLE IF EXISTS family.profiles;
DROP TABLE IF EXISTS family.members;
DROP TABLE IF EXISTS family.marriages;
DROP SEQUENCE IF EXISTS economy_schema.transactions_id_seq;
DROP TABLE IF EXISTS economy_schema.transactions;
DROP SEQUENCE IF EXISTS economy.transactions_id_seq;
DROP TABLE IF EXISTS economy.transactions;
DROP TABLE IF EXISTS disboard.config;
DROP TABLE IF EXISTS disboard.bump;
DROP TABLE IF EXISTS counting.config;
DROP TABLE IF EXISTS commands.usage;
DROP TABLE IF EXISTS commands.restricted;
DROP TABLE IF EXISTS commands.ignore;
DROP TABLE IF EXISTS commands.disabled;
DROP SEQUENCE IF EXISTS auto.media_id_seq;
DROP TABLE IF EXISTS auto.media;
DROP TABLE IF EXISTS audio.statistics;
DROP SEQUENCE IF EXISTS audio.recently_played_id_seq;
DROP TABLE IF EXISTS audio.recently_played;
DROP SEQUENCE IF EXISTS audio.playlists_id_seq;
DROP TABLE IF EXISTS audio.playlists;
DROP SEQUENCE IF EXISTS audio.playlist_tracks_id_seq;
DROP TABLE IF EXISTS audio.playlist_tracks;
DROP TABLE IF EXISTS audio.config;
DROP TABLE IF EXISTS alerts.twitch;
DROP EXTENSION IF EXISTS citext;
DROP SCHEMA IF EXISTS voicemaster;
DROP SCHEMA IF EXISTS voice;
DROP SCHEMA IF EXISTS verification;
DROP SCHEMA IF EXISTS transcribe;
DROP SCHEMA IF EXISTS track;
DROP SCHEMA IF EXISTS timer;
DROP SCHEMA IF EXISTS ticket;
DROP SCHEMA IF EXISTS streaks;
DROP SCHEMA IF EXISTS stats;
DROP SCHEMA IF EXISTS statistics;
DROP SCHEMA IF EXISTS snipe;
DROP SCHEMA IF EXISTS reskin;
DROP SCHEMA IF EXISTS reposters;
DROP SCHEMA IF EXISTS porn;
DROP SCHEMA IF EXISTS music;
DROP SCHEMA IF EXISTS level;
DROP SCHEMA IF EXISTS lastfm;
DROP SCHEMA IF EXISTS joindm;
DROP SCHEMA IF EXISTS invoke_history;
DROP SCHEMA IF EXISTS history;
DROP SCHEMA IF EXISTS fun;
DROP SCHEMA IF EXISTS fortnite;
DROP SCHEMA IF EXISTS feeds;
DROP SCHEMA IF EXISTS family;
DROP SCHEMA IF EXISTS economy_schema;
DROP SCHEMA IF EXISTS economy;
DROP SCHEMA IF EXISTS disboard;
DROP SCHEMA IF EXISTS counting;
DROP SCHEMA IF EXISTS commands;
DROP SCHEMA IF EXISTS auto;
DROP SCHEMA IF EXISTS audio;
DROP SCHEMA IF EXISTS alerts;
--
-- Name: alerts; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA alerts;

--
-- Name: audio; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA audio;

--
-- Name: auto; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA auto;

--
-- Name: commands; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA commands;

--
-- Name: counting; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA counting;

--
-- Name: disboard; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA disboard;

--
-- Name: economy; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA economy;

--
-- Name: economy_schema; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA economy_schema;

--
-- Name: family; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA family;

--
-- Name: feeds; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA feeds;

--
-- Name: fortnite; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA fortnite;

--
-- Name: fun; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA fun;

--
-- Name: history; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA history;

--
-- Name: invoke_history; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA invoke_history;

--
-- Name: joindm; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA joindm;

--
-- Name: lastfm; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA lastfm;

--
-- Name: level; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA level;

--
-- Name: music; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA music;

--
-- Name: porn; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA porn;

--
-- Name: reposters; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA reposters;

--
-- Name: reskin; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA reskin;

--
-- Name: snipe; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA snipe;

--
-- Name: statistics; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA statistics;

--
-- Name: stats; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA stats;

--
-- Name: streaks; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA streaks;

--
-- Name: ticket; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA ticket;

--
-- Name: timer; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA timer;

--
-- Name: track; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA track;

--
-- Name: transcribe; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA transcribe;

--
-- Name: verification; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA verification;

--
-- Name: voice; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA voice;

--
-- Name: voicemaster; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA voicemaster;

--
-- Name: citext; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS citext WITH SCHEMA public;


--
-- Name: EXTENSION citext; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION citext IS 'data type for case-insensitive character strings';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: twitch; Type: TABLE; Schema: alerts; Owner: postgres
--

CREATE TABLE alerts.twitch (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    twitch_id bigint NOT NULL,
    twitch_login text NOT NULL,
    last_stream_id bigint,
    role_id bigint,
    template text
);

--
-- Name: config; Type: TABLE; Schema: audio; Owner: postgres
--

CREATE TABLE audio.config (
    guild_id bigint NOT NULL,
    volume integer NOT NULL
);

--
-- Name: playlist_tracks; Type: TABLE; Schema: audio; Owner: postgres
--

CREATE TABLE audio.playlist_tracks (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    playlist_url text NOT NULL,
    track_title text NOT NULL,
    track_uri text NOT NULL,
    track_author text,
    album_name text,
    artwork_url text,
    added_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: playlist_tracks_id_seq; Type: SEQUENCE; Schema: audio; Owner: postgres
--

CREATE SEQUENCE audio.playlist_tracks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: playlist_tracks_id_seq; Type: SEQUENCE OWNED BY; Schema: audio; Owner: postgres
--

ALTER SEQUENCE audio.playlist_tracks_id_seq OWNED BY audio.playlist_tracks.id;


--
-- Name: playlists; Type: TABLE; Schema: audio; Owner: postgres
--

CREATE TABLE audio.playlists (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    playlist_name text NOT NULL,
    playlist_url text NOT NULL,
    track_count integer DEFAULT 0 NOT NULL,
    added_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: playlists_id_seq; Type: SEQUENCE; Schema: audio; Owner: postgres
--

CREATE SEQUENCE audio.playlists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: playlists_id_seq; Type: SEQUENCE OWNED BY; Schema: audio; Owner: postgres
--

ALTER SEQUENCE audio.playlists_id_seq OWNED BY audio.playlists.id;


--
-- Name: recently_played; Type: TABLE; Schema: audio; Owner: postgres
--

CREATE TABLE audio.recently_played (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    track_title text NOT NULL,
    track_uri text,
    track_author text,
    artwork_url text,
    playlist_name text,
    playlist_url text,
    played_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: recently_played_id_seq; Type: SEQUENCE; Schema: audio; Owner: postgres
--

CREATE SEQUENCE audio.recently_played_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: recently_played_id_seq; Type: SEQUENCE OWNED BY; Schema: audio; Owner: postgres
--

ALTER SEQUENCE audio.recently_played_id_seq OWNED BY audio.recently_played.id;


--
-- Name: statistics; Type: TABLE; Schema: audio; Owner: postgres
--

CREATE TABLE audio.statistics (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    tracks_played integer DEFAULT 0 NOT NULL
);

--
-- Name: media; Type: TABLE; Schema: auto; Owner: postgres
--

CREATE TABLE auto.media (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    type text NOT NULL,
    category text NOT NULL,
    CONSTRAINT media_category_check CHECK ((category = ANY (ARRAY['girls'::text, 'boys'::text, 'anime'::text]))),
    CONSTRAINT media_type_check CHECK ((type = ANY (ARRAY['banner'::text, 'pfp'::text])))
);

--
-- Name: media_id_seq; Type: SEQUENCE; Schema: auto; Owner: postgres
--

CREATE SEQUENCE auto.media_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: auto; Owner: postgres
--

ALTER SEQUENCE auto.media_id_seq OWNED BY auto.media.id;


--
-- Name: disabled; Type: TABLE; Schema: commands; Owner: postgres
--

CREATE TABLE commands.disabled (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    command text NOT NULL
);

--
-- Name: ignore; Type: TABLE; Schema: commands; Owner: postgres
--

CREATE TABLE commands.ignore (
    guild_id bigint NOT NULL,
    target_id bigint NOT NULL
);

--
-- Name: restricted; Type: TABLE; Schema: commands; Owner: postgres
--

CREATE TABLE commands.restricted (
    guild_id bigint NOT NULL,
    role_id bigint NOT NULL,
    command text NOT NULL
);

--
-- Name: usage; Type: TABLE; Schema: commands; Owner: postgres
--

CREATE TABLE commands.usage (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    user_id bigint NOT NULL,
    command text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: counting; Owner: postgres
--

CREATE TABLE counting.config (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    current_count integer DEFAULT 0 NOT NULL,
    high_score integer DEFAULT 0 NOT NULL,
    last_user_id bigint,
    safe_mode boolean DEFAULT false NOT NULL,
    allow_fails boolean DEFAULT false NOT NULL,
    success_emoji text DEFAULT '✅'::text NOT NULL,
    fail_emoji text DEFAULT '❌'::text NOT NULL
);

--
-- Name: bump; Type: TABLE; Schema: disboard; Owner: postgres
--

CREATE TABLE disboard.bump (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    bumped_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: disboard; Owner: postgres
--

CREATE TABLE disboard.config (
    guild_id bigint NOT NULL,
    status boolean DEFAULT true NOT NULL,
    channel_id bigint,
    last_channel_id bigint,
    last_user_id bigint,
    message text,
    thank_message text,
    next_bump timestamp with time zone
);

--
-- Name: transactions; Type: TABLE; Schema: economy; Owner: postgres
--

CREATE TABLE economy.transactions (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    amount bigint NOT NULL,
    type text,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: economy; Owner: postgres
--

CREATE SEQUENCE economy.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: economy; Owner: postgres
--

ALTER SEQUENCE economy.transactions_id_seq OWNED BY economy.transactions.id;


--
-- Name: transactions; Type: TABLE; Schema: economy_schema; Owner: postgres
--

CREATE TABLE economy_schema.transactions (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: transactions_id_seq; Type: SEQUENCE; Schema: economy_schema; Owner: postgres
--

CREATE SEQUENCE economy_schema.transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: economy_schema; Owner: postgres
--

ALTER SEQUENCE economy_schema.transactions_id_seq OWNED BY economy_schema.transactions.id;


--
-- Name: marriages; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.marriages (
    user_id bigint NOT NULL,
    partner_id bigint NOT NULL,
    active boolean DEFAULT true NOT NULL,
    marriage_date timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: members; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.members (
    user_id bigint NOT NULL,
    related_id bigint NOT NULL,
    relationship text NOT NULL
);

--
-- Name: profiles; Type: TABLE; Schema: family; Owner: postgres
--

CREATE TABLE family.profiles (
    user_id bigint NOT NULL,
    bio text
);

--
-- Name: instagram; Type: TABLE; Schema: feeds; Owner: postgres
--

CREATE TABLE feeds.instagram (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    instagram_id bigint NOT NULL,
    instagram_name text NOT NULL,
    template text
);

--
-- Name: pinterest; Type: TABLE; Schema: feeds; Owner: postgres
--

CREATE TABLE feeds.pinterest (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    pinterest_id text NOT NULL,
    pinterest_name text NOT NULL,
    board text,
    board_id text,
    embeds boolean DEFAULT true NOT NULL,
    only_new boolean DEFAULT false NOT NULL
);

--
-- Name: reddit; Type: TABLE; Schema: feeds; Owner: postgres
--

CREATE TABLE feeds.reddit (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    subreddit_name text NOT NULL
);

--
-- Name: soundcloud; Type: TABLE; Schema: feeds; Owner: postgres
--

CREATE TABLE feeds.soundcloud (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    soundcloud_id bigint NOT NULL,
    soundcloud_name text NOT NULL,
    template text
);

--
-- Name: tiktok; Type: TABLE; Schema: feeds; Owner: postgres
--

CREATE TABLE feeds.tiktok (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    tiktok_id bigint NOT NULL,
    tiktok_name text NOT NULL,
    template text
);

--
-- Name: twitter; Type: TABLE; Schema: feeds; Owner: postgres
--

CREATE TABLE feeds.twitter (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    twitter_id bigint NOT NULL,
    twitter_name text NOT NULL,
    template text,
    color text
);

--
-- Name: youtube; Type: TABLE; Schema: feeds; Owner: postgres
--

CREATE TABLE feeds.youtube (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    youtube_id text NOT NULL,
    youtube_name text NOT NULL,
    template text,
    shorts boolean DEFAULT false NOT NULL
);

--
-- Name: authorization; Type: TABLE; Schema: fortnite; Owner: postgres
--

CREATE TABLE fortnite."authorization" (
    user_id bigint NOT NULL,
    display_name text NOT NULL,
    account_id text NOT NULL,
    access_token text NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    refresh_token text NOT NULL
);

--
-- Name: reminder; Type: TABLE; Schema: fortnite; Owner: postgres
--

CREATE TABLE fortnite.reminder (
    user_id bigint NOT NULL,
    item_id text NOT NULL,
    item_name text NOT NULL,
    item_type text NOT NULL
);

--
-- Name: rotation; Type: TABLE; Schema: fortnite; Owner: postgres
--

CREATE TABLE fortnite.rotation (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message text
);

--
-- Name: wyr_channels; Type: TABLE; Schema: fun; Owner: postgres
--

CREATE TABLE fun.wyr_channels (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    rating text NOT NULL
);

--
-- Name: moderation; Type: TABLE; Schema: history; Owner: postgres
--

CREATE TABLE history.moderation (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    case_id integer NOT NULL,
    user_id bigint NOT NULL,
    moderator_id bigint NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    action text NOT NULL,
    reason text NOT NULL,
    duration integer
);

--
-- Name: moderation_id_seq; Type: SEQUENCE; Schema: history; Owner: postgres
--

CREATE SEQUENCE history.moderation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: moderation_id_seq; Type: SEQUENCE OWNED BY; Schema: history; Owner: postgres
--

ALTER SEQUENCE history.moderation_id_seq OWNED BY history.moderation.id;


--
-- Name: commands; Type: TABLE; Schema: invoke_history; Owner: postgres
--

CREATE TABLE invoke_history.commands (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    command_name text NOT NULL,
    category text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

--
-- Name: commands_id_seq; Type: SEQUENCE; Schema: invoke_history; Owner: postgres
--

CREATE SEQUENCE invoke_history.commands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: commands_id_seq; Type: SEQUENCE OWNED BY; Schema: invoke_history; Owner: postgres
--

ALTER SEQUENCE invoke_history.commands_id_seq OWNED BY invoke_history.commands.id;


--
-- Name: config; Type: TABLE; Schema: joindm; Owner: postgres
--

CREATE TABLE joindm.config (
    guild_id bigint NOT NULL,
    enabled boolean DEFAULT true NOT NULL,
    message text
);

--
-- Name: albums; Type: TABLE; Schema: lastfm; Owner: postgres
--

CREATE TABLE lastfm.albums (
    user_id bigint NOT NULL,
    username text NOT NULL,
    artist public.citext NOT NULL,
    album public.citext NOT NULL,
    plays bigint NOT NULL
);

--
-- Name: artists; Type: TABLE; Schema: lastfm; Owner: postgres
--

CREATE TABLE lastfm.artists (
    user_id bigint NOT NULL,
    username text NOT NULL,
    artist public.citext NOT NULL,
    plays bigint NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: lastfm; Owner: postgres
--

CREATE TABLE lastfm.config (
    user_id bigint NOT NULL,
    username public.citext NOT NULL,
    color bigint,
    command text,
    reactions text[] DEFAULT '{}'::text[] NOT NULL,
    embed_mode text DEFAULT 'default'::text NOT NULL,
    last_indexed timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: crown_updates; Type: TABLE; Schema: lastfm; Owner: postgres
--

CREATE TABLE lastfm.crown_updates (
    guild_id bigint NOT NULL,
    last_update timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: crowns; Type: TABLE; Schema: lastfm; Owner: postgres
--

CREATE TABLE lastfm.crowns (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    artist public.citext NOT NULL,
    claimed_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: hidden; Type: TABLE; Schema: lastfm; Owner: postgres
--

CREATE TABLE lastfm.hidden (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL
);

--
-- Name: tracks; Type: TABLE; Schema: lastfm; Owner: postgres
--

CREATE TABLE lastfm.tracks (
    user_id bigint NOT NULL,
    username text NOT NULL,
    artist public.citext NOT NULL,
    track public.citext NOT NULL,
    plays bigint NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: level; Owner: postgres
--

CREATE TABLE level.config (
    guild_id bigint NOT NULL,
    status boolean DEFAULT true NOT NULL,
    cooldown integer DEFAULT 60 NOT NULL,
    max_level integer DEFAULT 0 NOT NULL,
    stack_roles boolean DEFAULT true NOT NULL,
    formula_multiplier double precision DEFAULT 1 NOT NULL,
    xp_multiplier double precision DEFAULT 1 NOT NULL,
    xp_min integer DEFAULT 15 NOT NULL,
    xp_max integer DEFAULT 40 NOT NULL,
    effort_status boolean DEFAULT false NOT NULL,
    effort_text bigint DEFAULT 25 NOT NULL,
    effort_image bigint DEFAULT 3 NOT NULL,
    effort_booster bigint DEFAULT 10 NOT NULL
);

--
-- Name: member; Type: TABLE; Schema: level; Owner: postgres
--

CREATE TABLE level.member (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    xp integer DEFAULT 0 NOT NULL,
    level integer DEFAULT 0 NOT NULL,
    total_xp integer DEFAULT 0 NOT NULL,
    last_message timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: notification; Type: TABLE; Schema: level; Owner: postgres
--

CREATE TABLE level.notification (
    guild_id bigint NOT NULL,
    channel_id bigint,
    dm boolean DEFAULT false NOT NULL,
    template text
);

--
-- Name: role; Type: TABLE; Schema: level; Owner: postgres
--

CREATE TABLE level.role (
    guild_id bigint NOT NULL,
    role_id bigint NOT NULL,
    level integer NOT NULL
);

--
-- Name: history; Type: TABLE; Schema: music; Owner: postgres
--

CREATE TABLE music.history (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    title text NOT NULL,
    artist text NOT NULL,
    duration integer NOT NULL,
    thumbnail text NOT NULL,
    uri text NOT NULL,
    played_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

--
-- Name: history_id_seq; Type: SEQUENCE; Schema: music; Owner: postgres
--

CREATE SEQUENCE music.history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: history_id_seq; Type: SEQUENCE OWNED BY; Schema: music; Owner: postgres
--

ALTER SEQUENCE music.history_id_seq OWNED BY music.history.id;


--
-- Name: playlist_tracks; Type: TABLE; Schema: music; Owner: postgres
--

CREATE TABLE music.playlist_tracks (
    id integer NOT NULL,
    playlist_id integer,
    title text NOT NULL,
    artist text NOT NULL,
    duration integer NOT NULL,
    thumbnail text NOT NULL,
    uri text NOT NULL,
    added_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    added_by bigint NOT NULL
);

--
-- Name: playlist_tracks_id_seq; Type: SEQUENCE; Schema: music; Owner: postgres
--

CREATE SEQUENCE music.playlist_tracks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: playlist_tracks_id_seq; Type: SEQUENCE OWNED BY; Schema: music; Owner: postgres
--

ALTER SEQUENCE music.playlist_tracks_id_seq OWNED BY music.playlist_tracks.id;


--
-- Name: playlists; Type: TABLE; Schema: music; Owner: postgres
--

CREATE TABLE music.playlists (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    name text NOT NULL,
    thumbnail text DEFAULT 'https://img.freepik.com/premium-photo/treble-clef-circle-musical-notes-black-background-design-3d-illustration_116124-10456.jpg?semt=ais'::text NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);

--
-- Name: playlists_id_seq; Type: SEQUENCE; Schema: music; Owner: postgres
--

CREATE SEQUENCE music.playlists_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: playlists_id_seq; Type: SEQUENCE OWNED BY; Schema: music; Owner: postgres
--

ALTER SEQUENCE music.playlists_id_seq OWNED BY music.playlists.id;


--
-- Name: config; Type: TABLE; Schema: porn; Owner: postgres
--

CREATE TABLE porn.config (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    webhook_id bigint NOT NULL,
    webhook_token text NOT NULL,
    spoiler boolean DEFAULT false
);

--
-- Name: access_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.access_tokens (
    user_id bigint NOT NULL,
    token text NOT NULL,
    discord_token text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    expires_at timestamp with time zone NOT NULL
);

--
-- Name: afk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.afk (
    user_id bigint NOT NULL,
    status text DEFAULT 'AFK'::text NOT NULL,
    left_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: aliases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.aliases (
    guild_id bigint NOT NULL,
    name text NOT NULL,
    invoke text NOT NULL,
    command text NOT NULL
);

--
-- Name: antinuke; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antinuke (
    guild_id bigint NOT NULL,
    whitelist bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    trusted_admins bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    bot boolean DEFAULT false NOT NULL,
    ban jsonb,
    kick jsonb,
    role jsonb,
    channel jsonb,
    webhook jsonb,
    emoji jsonb
);

--
-- Name: antiraid; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.antiraid (
    guild_id bigint NOT NULL,
    locked boolean DEFAULT false NOT NULL,
    joins jsonb,
    mentions jsonb,
    avatar jsonb,
    browser jsonb
);

--
-- Name: appeal_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appeal_config (
    guild_id bigint NOT NULL,
    appeal_server_id bigint,
    appeal_channel_id bigint,
    logs_channel_id bigint,
    direct_appeal boolean DEFAULT false NOT NULL,
    questions jsonb,
    bypass_roles bigint[] DEFAULT '{}'::bigint[]
);

--
-- Name: appeal_templates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appeal_templates (
    guild_id bigint NOT NULL,
    name text NOT NULL,
    response text NOT NULL
);

--
-- Name: appeals; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.appeals (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    action_type text,
    status text DEFAULT 'pending'::text NOT NULL,
    moderator_id bigint,
    flags text[] DEFAULT '{}'::text[],
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone
);

--
-- Name: appeals_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.appeals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: appeals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.appeals_id_seq OWNED BY public.appeals.id;


--
-- Name: auto_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auto_role (
    guild_id bigint NOT NULL,
    role_id bigint NOT NULL,
    action text NOT NULL,
    delay integer
);

--
-- Name: autokick; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.autokick (
    user_id bigint,
    guild_id bigint,
    reason text,
    author_id bigint
);

--
-- Name: avatar_current; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avatar_current (
    user_id bigint NOT NULL,
    avatar_hash text NOT NULL,
    avatar_url text NOT NULL,
    last_updated timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: avatar_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avatar_history (
    user_id bigint NOT NULL,
    avatar_url text NOT NULL,
    "timestamp" timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);

--
-- Name: avatar_history_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.avatar_history_settings (
    user_id bigint NOT NULL,
    enabled boolean DEFAULT false NOT NULL
);

--
-- Name: backup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.backup (
    key text NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    data text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: beta_dashboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.beta_dashboard (
    user_id bigint NOT NULL,
    status text DEFAULT 'pending'::text NOT NULL,
    added_by bigint,
    notes text,
    added_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: birthdays; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.birthdays (
    user_id bigint NOT NULL,
    birthday timestamp without time zone NOT NULL
);

--
-- Name: blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blacklist (
    user_id bigint NOT NULL,
    information text
);

--
-- Name: blunt; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.blunt (
    guild_id bigint NOT NULL,
    user_id bigint,
    hits bigint DEFAULT 0,
    passes bigint DEFAULT 0,
    members jsonb[] DEFAULT '{}'::jsonb[]
);

--
-- Name: boost_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boost_history (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    boost_count integer DEFAULT 0 NOT NULL,
    last_boost_date timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: boost_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boost_message (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    template text NOT NULL,
    delete_after integer
);

--
-- Name: booster_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.booster_role (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    role_id bigint NOT NULL
);

--
-- Name: boosters_lost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.boosters_lost (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    lasted_for interval NOT NULL,
    ended_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: business_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.business_jobs (
    job_id integer NOT NULL,
    business_id integer NOT NULL,
    "position" text NOT NULL,
    salary integer NOT NULL,
    description text
);

--
-- Name: business_jobs_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.business_jobs_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: business_jobs_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.business_jobs_job_id_seq OWNED BY public.business_jobs.job_id;


--
-- Name: business_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.business_stats (
    business_id integer NOT NULL,
    total_revenue integer DEFAULT 0 NOT NULL,
    total_expenses integer DEFAULT 0 NOT NULL
);

--
-- Name: businesses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.businesses (
    business_id integer NOT NULL,
    name text NOT NULL,
    owner_id bigint NOT NULL,
    balance integer DEFAULT 0 NOT NULL,
    employee_limit integer DEFAULT 5 NOT NULL
);

--
-- Name: businesses_business_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.businesses_business_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: businesses_business_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.businesses_business_id_seq OWNED BY public.businesses.business_id;


--
-- Name: card_daily; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_daily (
    user_id bigint NOT NULL,
    last_claim timestamp with time zone
);

--
-- Name: card_drop_channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_drop_channels (
    channel_id bigint NOT NULL,
    guild_id bigint NOT NULL,
    added_by bigint
);

--
-- Name: card_market; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.card_market (
    listing_id integer NOT NULL,
    seller_id bigint NOT NULL,
    card_id text NOT NULL,
    price integer NOT NULL,
    listed_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: card_market_listing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.card_market_listing_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: card_market_listing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.card_market_listing_id_seq OWNED BY public.card_market.listing_id;


--
-- Name: cases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cases (
    guild_id bigint,
    count integer
);

--
-- Name: clownboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clownboard (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    self_clown boolean DEFAULT true NOT NULL,
    threshold integer DEFAULT 3 NOT NULL,
    emoji text DEFAULT '🤡'::text NOT NULL
);

--
-- Name: clownboard_entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.clownboard_entry (
    guild_id bigint NOT NULL,
    clown_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint NOT NULL,
    emoji text NOT NULL
);

--
-- Name: confess; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confess (
    guild_id bigint,
    channel_id bigint,
    confession integer
);

--
-- Name: confess_blacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confess_blacklist (
    guild_id bigint NOT NULL,
    word text NOT NULL
);

--
-- Name: confess_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confess_members (
    guild_id bigint,
    user_id bigint,
    confession integer
);

--
-- Name: confess_mute; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confess_mute (
    guild_id bigint,
    user_id bigint
);

--
-- Name: confess_replies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.confess_replies (
    message_id bigint NOT NULL,
    user_id bigint NOT NULL,
    guild_id bigint NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.config (
    guild_id bigint NOT NULL,
    prefix text DEFAULT ','::text,
    baserole bigint,
    voicemaster jsonb DEFAULT '{}'::jsonb,
    mod_log bigint,
    invoke jsonb DEFAULT '{}'::jsonb,
    lock_ignore jsonb[] DEFAULT '{}'::jsonb[],
    reskin jsonb DEFAULT '{}'::jsonb
);

--
-- Name: contracts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contracts (
    business_id integer NOT NULL,
    employee_id bigint NOT NULL,
    owner_id bigint NOT NULL,
    "position" text NOT NULL,
    salary integer NOT NULL
);

--
-- Name: counter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.counter (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    option text NOT NULL,
    last_update timestamp with time zone DEFAULT now() NOT NULL,
    rate_limited_until timestamp with time zone
);

--
-- Name: crypto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.crypto (
    user_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    transaction_id text NOT NULL,
    transaction_type text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: daily_messages; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daily_messages (
    guild_id bigint NOT NULL,
    date date NOT NULL,
    messages integer DEFAULT 0 NOT NULL,
    voice_minutes double precision DEFAULT 0 NOT NULL
);

--
-- Name: daily_metrics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daily_metrics (
    date date NOT NULL,
    update_count integer DEFAULT 0 NOT NULL
);

--
-- Name: daily_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.daily_stats (
    guild_id bigint NOT NULL,
    date date NOT NULL,
    messages_sent integer DEFAULT 0 NOT NULL,
    voice_minutes double precision DEFAULT 0 NOT NULL
);

--
-- Name: dalle_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dalle_credits (
    user_id bigint NOT NULL,
    credits numeric DEFAULT 15.00 NOT NULL,
    last_reset timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: docket_channels; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.docket_channels (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint NOT NULL,
    thread_id bigint,
    last_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: dockets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dockets (
    id integer NOT NULL,
    thread_id bigint NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    title text NOT NULL,
    original_content text,
    gpt_summary text,
    image_urls text[],
    status text DEFAULT 'pending'::text NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    last_updated timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: dockets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.dockets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: dockets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.dockets_id_seq OWNED BY public.dockets.id;


--
-- Name: donators; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.donators (
    user_id bigint NOT NULL
);

--
-- Name: economy; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economy (
    user_id bigint NOT NULL,
    wallet integer DEFAULT 0 NOT NULL,
    bank integer DEFAULT 0 NOT NULL,
    bank_capacity integer DEFAULT 10000 NOT NULL,
    gems integer DEFAULT 0 NOT NULL,
    balance integer DEFAULT 0 NOT NULL,
    earnings numeric DEFAULT 0 NOT NULL,
    last_daily timestamp with time zone,
    daily_streak integer DEFAULT 0 NOT NULL
);

--
-- Name: economy_access; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.economy_access (
    user_id bigint NOT NULL
);

--
-- Name: employee_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee_stats (
    business_id integer NOT NULL,
    employee_id bigint NOT NULL,
    work_count integer DEFAULT 0 NOT NULL,
    total_earned integer DEFAULT 0 NOT NULL
);

--
-- Name: fake_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.fake_permissions (
    guild_id bigint NOT NULL,
    role_id bigint NOT NULL,
    permission text NOT NULL
);

--
-- Name: feedback; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.feedback (
    user_id bigint NOT NULL,
    message text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: forcenick; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.forcenick (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    nickname text NOT NULL
);

--
-- Name: gallery; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gallery (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL
);

--
-- Name: gift_logs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gift_logs (
    id integer NOT NULL,
    sender_id bigint NOT NULL,
    receiver_id bigint NOT NULL,
    item_id integer NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: gift_logs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gift_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: gift_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gift_logs_id_seq OWNED BY public.gift_logs.id;


--
-- Name: giveaway; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.giveaway (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint NOT NULL,
    prize text NOT NULL,
    emoji text NOT NULL,
    winners integer NOT NULL,
    ended boolean DEFAULT false NOT NULL,
    ends_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: giveaway_settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.giveaway_settings (
    guild_id bigint NOT NULL,
    bonus_roles jsonb DEFAULT '{}'::jsonb
);

--
-- Name: gnames; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gnames (
    guild_id bigint NOT NULL,
    name text NOT NULL,
    changed_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: goodbye_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.goodbye_message (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    template text NOT NULL,
    delete_after integer
);

--
-- Name: guild_verification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guild_verification (
    guild_id bigint NOT NULL,
    platform text,
    level integer,
    kick_after integer,
    ratelimit integer,
    antialt boolean DEFAULT false,
    prevent_vpn boolean DEFAULT false,
    verified_role_id bigint,
    log_channel_id bigint,
    manual_verification boolean DEFAULT false,
    verification_channel_id bigint
);

--
-- Name: guildblacklist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.guildblacklist (
    guild_id bigint NOT NULL,
    information text
);

--
-- Name: hardban; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hardban (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL
);

--
-- Name: highlights; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.highlights (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    word text NOT NULL
);

--
-- Name: hourly_metrics; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.hourly_metrics (
    hour timestamp with time zone NOT NULL,
    avg_cpu numeric,
    avg_memory numeric,
    sample_count integer DEFAULT 0 NOT NULL
);

--
-- Name: immune; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.immune (
    guild_id bigint NOT NULL,
    entity_id bigint NOT NULL,
    role_id bigint,
    type text NOT NULL
);

--
-- Name: incidents; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.incidents (
    id text NOT NULL,
    title text NOT NULL,
    start_time bigint NOT NULL,
    end_time bigint,
    status text DEFAULT 'investigating'::text NOT NULL,
    severity text NOT NULL,
    affected_services text[] DEFAULT '{}'::text[],
    affected_shards text[] DEFAULT '{}'::text[],
    updates text
);

--
-- Name: invite_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invite_config (
    guild_id bigint NOT NULL,
    is_enabled boolean DEFAULT false NOT NULL,
    log_channel_id bigint,
    fake_join_threshold integer,
    account_age_requirement integer,
    server_age_requirement integer
);

--
-- Name: invite_rewards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invite_rewards (
    guild_id bigint NOT NULL,
    role_id bigint NOT NULL,
    required_invites integer NOT NULL
);

--
-- Name: invite_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invite_stats (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    regular_invites integer DEFAULT 0 NOT NULL,
    bonus_invites integer DEFAULT 0 NOT NULL
);

--
-- Name: invite_tracking; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.invite_tracking (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    inviter_id bigint,
    invite_code text,
    uses integer DEFAULT 0 NOT NULL,
    bonus_uses integer DEFAULT 0 NOT NULL,
    joined_at timestamp with time zone,
    left_at timestamp with time zone
);

--
-- Name: jail; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jail (
    guild_id bigint,
    user_id bigint,
    roles text
);

--
-- Name: job_applications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_applications (
    application_id integer NOT NULL,
    job_id integer NOT NULL,
    applicant_id bigint NOT NULL,
    status text DEFAULT 'pending'::text NOT NULL,
    applied_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: job_applications_application_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.job_applications_application_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: job_applications_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.job_applications_application_id_seq OWNED BY public.job_applications.application_id;


--
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    user_id bigint NOT NULL,
    current_job text,
    employer_id bigint,
    job_level integer DEFAULT 1 NOT NULL,
    job_experience integer DEFAULT 0 NOT NULL,
    last_work timestamp with time zone
);

--
-- Name: logging; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logging (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    events integer NOT NULL
);

--
-- Name: logging_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.logging_history (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    channel_id bigint,
    event_type text NOT NULL,
    content jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: logging_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.logging_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: logging_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.logging_history_id_seq OWNED BY public.logging_history.id;


--
-- Name: lottery_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lottery_history (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    pot_amount bigint NOT NULL,
    total_tickets integer NOT NULL,
    winner_tickets integer NOT NULL,
    won_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: lottery_history_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lottery_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: lottery_history_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lottery_history_id_seq OWNED BY public.lottery_history.id;


--
-- Name: lovense_config; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lovense_config (
    guild_id bigint NOT NULL,
    is_enabled boolean DEFAULT false NOT NULL,
    log_channel_id bigint
);

--
-- Name: lovense_connections; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lovense_connections (
    token text NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: lovense_consent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lovense_consent (
    user_id bigint NOT NULL,
    agreed boolean DEFAULT false NOT NULL,
    locked boolean DEFAULT false NOT NULL
);

--
-- Name: lovense_devices; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lovense_devices (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    device_id text NOT NULL,
    device_type text,
    last_active timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: lovense_shares; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lovense_shares (
    guild_id bigint NOT NULL,
    owner_id bigint NOT NULL,
    target_id bigint NOT NULL,
    device_id text NOT NULL
);

--
-- Name: member_stats; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.member_stats (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    messages integer DEFAULT 0 NOT NULL,
    voice_hours double precision DEFAULT 0 NOT NULL
);

--
-- Name: message_ranks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.message_ranks (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    messages integer DEFAULT 0 NOT NULL,
    msg_rank integer
);

--
-- Name: mod; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.mod (
    guild_id bigint,
    channel_id bigint,
    jail_id bigint,
    role_id bigint
);

--
-- Name: name_history; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.name_history (
    user_id bigint NOT NULL,
    username text NOT NULL,
    is_nickname boolean DEFAULT false NOT NULL,
    is_hidden boolean DEFAULT false NOT NULL,
    changed_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: payment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment (
    guild_id bigint NOT NULL,
    customer_id bigint NOT NULL,
    method text NOT NULL,
    amount bigint NOT NULL,
    transfers integer DEFAULT 0 NOT NULL,
    paid_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: pet_adventures; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pet_adventures (
    id integer NOT NULL,
    pet_id integer NOT NULL,
    adventure_type text NOT NULL,
    start_time timestamp with time zone DEFAULT now() NOT NULL,
    end_time timestamp with time zone NOT NULL,
    completed boolean DEFAULT false NOT NULL
);

--
-- Name: pet_adventures_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pet_adventures_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: pet_adventures_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pet_adventures_id_seq OWNED BY public.pet_adventures.id;


--
-- Name: pet_trades; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pet_trades (
    id integer NOT NULL,
    pet1_id integer NOT NULL,
    pet2_id integer NOT NULL,
    user1_id bigint NOT NULL,
    user2_id bigint NOT NULL,
    trade_fee integer DEFAULT 0 NOT NULL,
    trade_time timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: pet_trades_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pet_trades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: pet_trades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pet_trades_id_seq OWNED BY public.pet_trades.id;


--
-- Name: pets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pets (
    pet_id integer NOT NULL,
    owner_id bigint NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    rarity text NOT NULL,
    level integer DEFAULT 1 NOT NULL,
    xp integer DEFAULT 0 NOT NULL,
    hunger integer DEFAULT 100 NOT NULL,
    happiness integer DEFAULT 100 NOT NULL,
    active boolean DEFAULT false NOT NULL
);

--
-- Name: pets_pet_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pets_pet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: pets_pet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pets_pet_id_seq OWNED BY public.pets.pet_id;


--
-- Name: pingonjoin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pingonjoin (
    channel_id bigint,
    guild_id bigint
);

--
-- Name: poll_votes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.poll_votes (
    vote_id integer NOT NULL,
    poll_id uuid NOT NULL,
    user_id bigint NOT NULL,
    choice_ids integer[] NOT NULL
);

--
-- Name: poll_votes_vote_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.poll_votes_vote_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: poll_votes_vote_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.poll_votes_vote_id_seq OWNED BY public.poll_votes.vote_id;


--
-- Name: polls; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.polls (
    poll_id uuid DEFAULT gen_random_uuid() NOT NULL,
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint DEFAULT 0 NOT NULL,
    creator_id bigint NOT NULL,
    title text NOT NULL,
    description text,
    choices text NOT NULL,
    settings text NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: prefix; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prefix (
    guild_id bigint NOT NULL,
    prefix text NOT NULL
);

--
-- Name: prefixex; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.prefixex (
    guild_id bigint,
    prefix text
);

--
-- Name: publisher; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.publisher (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL
);

--
-- Name: pubsub; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pubsub (
    id text NOT NULL,
    expires_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL
);

--
-- Name: quoter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.quoter (
    guild_id bigint NOT NULL,
    channel_id bigint,
    emoji text,
    embeds boolean DEFAULT true NOT NULL
);

--
-- Name: reaction_role; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reaction_role (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint NOT NULL,
    role_id bigint NOT NULL,
    emoji text NOT NULL
);

--
-- Name: reaction_trigger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reaction_trigger (
    guild_id bigint NOT NULL,
    trigger public.citext NOT NULL,
    emoji text NOT NULL
);

--
-- Name: reminders; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reminders (
    user_id bigint NOT NULL,
    reminder text NOT NULL,
    remind_at timestamp with time zone NOT NULL,
    invoked_at timestamp with time zone NOT NULL
);

--
-- Name: reskin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reskin (
    user_id bigint NOT NULL,
    toggled boolean DEFAULT false,
    username character varying(100),
    avatar text
);

--
-- Name: reskin_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reskin_user (
    user_id bigint,
    toggled boolean,
    username text,
    avatar text
);

--
-- Name: response_trigger; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.response_trigger (
    guild_id bigint NOT NULL,
    trigger public.citext NOT NULL,
    template text NOT NULL,
    strict boolean DEFAULT false NOT NULL,
    reply boolean DEFAULT false NOT NULL,
    delete boolean DEFAULT false NOT NULL,
    delete_after integer DEFAULT 0 NOT NULL,
    role_id bigint
);

--
-- Name: role_shops; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.role_shops (
    guild_id bigint NOT NULL,
    role_id bigint NOT NULL,
    price integer NOT NULL,
    description text
);

--
-- Name: roleplay; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.roleplay (
    user_id bigint NOT NULL,
    target_id bigint NOT NULL,
    category text NOT NULL,
    amount integer DEFAULT 1 NOT NULL
);

--
-- Name: selfprefix; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.selfprefix (
    user_id bigint,
    prefix text
);

--
-- Name: settings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.settings (
    guild_id bigint NOT NULL,
    prefixes text[] DEFAULT '{}'::text[] NOT NULL,
    reskin boolean DEFAULT false NOT NULL,
    reposter_prefix boolean DEFAULT true NOT NULL,
    reposter_delete boolean DEFAULT false NOT NULL,
    reposter_embed boolean DEFAULT true NOT NULL,
    transcription boolean DEFAULT false NOT NULL,
    welcome_removal boolean DEFAULT false NOT NULL,
    booster_role_base_id bigint,
    booster_role_include_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    lock_role_id bigint,
    lock_ignore_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    log_ignore_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    reassign_ignore_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    reassign_roles boolean DEFAULT false NOT NULL,
    invoke_kick text,
    invoke_ban text,
    invoke_unban text,
    invoke_timeout text,
    invoke_untimeout text,
    invoke_play text,
    play_panel boolean DEFAULT true NOT NULL,
    play_deletion boolean DEFAULT false NOT NULL,
    safesearch_level text DEFAULT 'strict'::text NOT NULL,
    author text
);

--
-- Name: shop_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shop_items (
    item_id integer NOT NULL,
    name text NOT NULL,
    description text,
    price integer NOT NULL,
    effect_type text,
    effect_value numeric,
    duration integer,
    effect_description text,
    effect_example jsonb
);

--
-- Name: shop_items_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.shop_items_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: shop_items_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.shop_items_item_id_seq OWNED BY public.shop_items.item_id;


--
-- Name: shutup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.shutup (
    guild_id bigint,
    user_id bigint
);

--
-- Name: social_links; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_links (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    type text NOT NULL,
    url text NOT NULL
);

--
-- Name: social_links_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_links_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: social_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_links_id_seq OWNED BY public.social_links.id;


--
-- Name: socials; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socials (
    user_id bigint NOT NULL,
    bio text,
    profile_image text,
    last_avatar text,
    last_background text,
    background_url text,
    audio_url text,
    audio_title text,
    show_friends boolean DEFAULT true,
    show_activity boolean DEFAULT true,
    click_enabled boolean DEFAULT false,
    click_text text DEFAULT 'Click to enter...'::text,
    discord_guild text,
    glass_effect boolean DEFAULT false,
    profile_color text DEFAULT 'linear'::text,
    linear_color text DEFAULT '#ffffff'::text,
    domains jsonb,
    verified_domains jsonb
);

--
-- Name: socials_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socials_details (
    user_id bigint NOT NULL,
    friends bigint NOT NULL
);

--
-- Name: socials_gradients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socials_gradients (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    element text NOT NULL,
    color text NOT NULL,
    "position" numeric
);

--
-- Name: socials_gradients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socials_gradients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: socials_gradients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socials_gradients_id_seq OWNED BY public.socials_gradients.id;


--
-- Name: socials_saved_colors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socials_saved_colors (
    user_id bigint NOT NULL,
    name text NOT NULL,
    color text NOT NULL,
    type text DEFAULT 'linear'::text NOT NULL
);

--
-- Name: socials_saved_gradients; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socials_saved_gradients (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    name text NOT NULL,
    color text NOT NULL,
    "position" numeric
);

--
-- Name: socials_saved_gradients_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socials_saved_gradients_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: socials_saved_gradients_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socials_saved_gradients_id_seq OWNED BY public.socials_saved_gradients.id;


--
-- Name: starboard; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.starboard (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    self_star boolean DEFAULT true NOT NULL,
    threshold integer DEFAULT 3 NOT NULL,
    emoji text DEFAULT '⭐'::text NOT NULL,
    color integer
);

--
-- Name: starboard_entry; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.starboard_entry (
    guild_id bigint NOT NULL,
    star_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint NOT NULL,
    emoji text NOT NULL
);

--
-- Name: sticky_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sticky_message (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint NOT NULL,
    template text NOT NULL
);

--
-- Name: suggestion; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suggestion (
    guild_id bigint NOT NULL,
    channel_id bigint,
    suggestion_id integer DEFAULT 0,
    author_id bigint,
    blacklisted_id bigint,
    thread_enabled boolean DEFAULT false,
    anonymous_allowed boolean DEFAULT false
);

--
-- Name: suggestion_entries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suggestion_entries (
    guild_id bigint NOT NULL,
    message_id bigint NOT NULL,
    author_id bigint NOT NULL,
    suggestion_id integer NOT NULL,
    is_anonymous boolean DEFAULT false
);

--
-- Name: suggestion_votes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suggestion_votes (
    guild_id bigint NOT NULL,
    message_id bigint NOT NULL,
    user_id bigint NOT NULL,
    vote_type integer NOT NULL
);

--
-- Name: tag_aliases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tag_aliases (
    guild_id bigint NOT NULL,
    alias text NOT NULL,
    original text NOT NULL
);

--
-- Name: tags; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tags (
    guild_id bigint NOT NULL,
    name text NOT NULL,
    owner_id bigint NOT NULL,
    template text NOT NULL,
    uses integer DEFAULT 0 NOT NULL,
    restricted_user bigint,
    restricted_role bigint
);

--
-- Name: thread; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.thread (
    guild_id bigint NOT NULL,
    thread_id bigint NOT NULL
);

--
-- Name: timezones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.timezones (
    user_id bigint NOT NULL,
    timezone text NOT NULL
);

--
-- Name: tracker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tracker (
    guild_id bigint NOT NULL,
    vanity_channel_id bigint,
    username_channel_id bigint
);

--
-- Name: user_cards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_cards (
    user_id bigint NOT NULL,
    card_id text NOT NULL,
    card_name text,
    rarity text,
    quantity integer DEFAULT 1 NOT NULL
);

--
-- Name: user_items; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_items (
    user_id bigint NOT NULL,
    item_id integer NOT NULL,
    quantity integer DEFAULT 1 NOT NULL,
    expires_at timestamp with time zone
);

--
-- Name: user_transactions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.user_transactions (
    id integer NOT NULL,
    user_id bigint NOT NULL,
    type text NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: user_transactions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.user_transactions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: user_transactions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.user_transactions_id_seq OWNED BY public.user_transactions.id;


--
-- Name: uwulock; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.uwulock (
    guild_id bigint,
    user_id bigint
);

--
-- Name: vanity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vanity (
    guild_id bigint NOT NULL,
    channel_id bigint,
    role_id bigint,
    template text
);

--
-- Name: vanity_sniper; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vanity_sniper (
    guild_id bigint NOT NULL,
    status boolean DEFAULT true NOT NULL,
    channel_id bigint,
    vanities text[] DEFAULT '{}'::text[] NOT NULL
);

--
-- Name: vape; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vape (
    user_id bigint NOT NULL,
    flavor text,
    hits bigint DEFAULT 0 NOT NULL
);

--
-- Name: warn_actions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warn_actions (
    guild_id bigint NOT NULL,
    threshold integer NOT NULL,
    action text NOT NULL,
    duration integer
);

--
-- Name: webhook; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.webhook (
    identifier text NOT NULL,
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    author_id bigint NOT NULL,
    webhook_id bigint NOT NULL
);

--
-- Name: welcome_message; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.welcome_message (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    template text NOT NULL,
    delete_after integer
);

--
-- Name: whitelist; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.whitelist (
    guild_id bigint NOT NULL,
    status boolean DEFAULT false NOT NULL,
    action text DEFAULT 'kick'::text NOT NULL
);

--
-- Name: disabled; Type: TABLE; Schema: reposters; Owner: postgres
--

CREATE TABLE reposters.disabled (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    reposter text NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: reskin; Owner: postgres
--

CREATE TABLE reskin.config (
    user_id bigint NOT NULL,
    username text,
    avatar_url text
);

--
-- Name: webhook; Type: TABLE; Schema: reskin; Owner: postgres
--

CREATE TABLE reskin.webhook (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    webhook_id bigint NOT NULL
);

--
-- Name: filter; Type: TABLE; Schema: snipe; Owner: postgres
--

CREATE TABLE snipe.filter (
    guild_id bigint NOT NULL,
    invites boolean DEFAULT false NOT NULL,
    links boolean DEFAULT false NOT NULL,
    words text[] DEFAULT '{}'::text[] NOT NULL
);

--
-- Name: ignore; Type: TABLE; Schema: snipe; Owner: postgres
--

CREATE TABLE snipe.ignore (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL
);

--
-- Name: daily; Type: TABLE; Schema: statistics; Owner: postgres
--

CREATE TABLE statistics.daily (
    guild_id bigint NOT NULL,
    date date DEFAULT CURRENT_DATE NOT NULL,
    commands_used integer DEFAULT 0 NOT NULL,
    messages_sent integer DEFAULT 0 NOT NULL,
    voice_minutes integer DEFAULT 0 NOT NULL,
    member_id bigint DEFAULT 0 NOT NULL
);

--
-- Name: daily_channels; Type: TABLE; Schema: statistics; Owner: postgres
--

CREATE TABLE statistics.daily_channels (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    date date DEFAULT CURRENT_DATE NOT NULL,
    messages_sent integer DEFAULT 0 NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: stats; Owner: postgres
--

CREATE TABLE stats.config (
    guild_id bigint NOT NULL,
    min_word_length integer DEFAULT 3,
    count_bots boolean DEFAULT false,
    channel_whitelist bigint[],
    channel_blacklist bigint[]
);

--
-- Name: custom_commands; Type: TABLE; Schema: stats; Owner: postgres
--

CREATE TABLE stats.custom_commands (
    guild_id bigint NOT NULL,
    command character varying(100) NOT NULL,
    word character varying(255) NOT NULL,
    created_by bigint NOT NULL,
    created_at timestamp with time zone DEFAULT now()
);

--
-- Name: word_usage; Type: TABLE; Schema: stats; Owner: postgres
--

CREATE TABLE stats.word_usage (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    word text NOT NULL,
    count integer DEFAULT 1,
    last_used timestamp with time zone DEFAULT now()
);

--
-- Name: config; Type: TABLE; Schema: streaks; Owner: postgres
--

CREATE TABLE streaks.config (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    notification_channel_id bigint,
    streak_emoji text DEFAULT '🔥'::text NOT NULL,
    image_only boolean DEFAULT false
);

--
-- Name: restore_log; Type: TABLE; Schema: streaks; Owner: postgres
--

CREATE TABLE streaks.restore_log (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    restored_by text NOT NULL,
    previous_streak integer DEFAULT 0 NOT NULL,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: restore_log_id_seq; Type: SEQUENCE; Schema: streaks; Owner: postgres
--

CREATE SEQUENCE streaks.restore_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: restore_log_id_seq; Type: SEQUENCE OWNED BY; Schema: streaks; Owner: postgres
--

ALTER SEQUENCE streaks.restore_log_id_seq OWNED BY streaks.restore_log.id;


--
-- Name: users; Type: TABLE; Schema: streaks; Owner: postgres
--

CREATE TABLE streaks.users (
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    current_streak integer DEFAULT 0 NOT NULL,
    highest_streak integer DEFAULT 0 NOT NULL,
    last_streak_time timestamp with time zone,
    total_images_sent integer DEFAULT 0 NOT NULL,
    restores_available integer DEFAULT 0 NOT NULL
);

--
-- Name: button; Type: TABLE; Schema: ticket; Owner: postgres
--

CREATE TABLE ticket.button (
    identifier text NOT NULL,
    guild_id bigint NOT NULL,
    template text,
    category_id bigint,
    topic text
);

--
-- Name: config; Type: TABLE; Schema: ticket; Owner: postgres
--

CREATE TABLE ticket.config (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    message_id bigint NOT NULL,
    staff_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    blacklisted_ids bigint[] DEFAULT '{}'::bigint[] NOT NULL,
    channel_name text
);

--
-- Name: open; Type: TABLE; Schema: ticket; Owner: postgres
--

CREATE TABLE ticket.open (
    identifier text NOT NULL,
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    user_id bigint NOT NULL
);

--
-- Name: message; Type: TABLE; Schema: timer; Owner: postgres
--

CREATE TABLE timer.message (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    template text NOT NULL,
    "interval" integer NOT NULL,
    next_trigger timestamp with time zone NOT NULL
);

--
-- Name: purge; Type: TABLE; Schema: timer; Owner: postgres
--

CREATE TABLE timer.purge (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    "interval" integer NOT NULL,
    next_trigger timestamp with time zone NOT NULL,
    method text DEFAULT 'bulk'::text NOT NULL
);

--
-- Name: username; Type: TABLE; Schema: track; Owner: postgres
--

CREATE TABLE track.username (
    username text NOT NULL,
    user_ids bigint[]
);

--
-- Name: vanity; Type: TABLE; Schema: track; Owner: postgres
--

CREATE TABLE track.vanity (
    vanity text NOT NULL,
    user_ids bigint[]
);

--
-- Name: channels; Type: TABLE; Schema: transcribe; Owner: postgres
--

CREATE TABLE transcribe.channels (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    added_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: rate_limit; Type: TABLE; Schema: transcribe; Owner: postgres
--

CREATE TABLE transcribe.rate_limit (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    last_used timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    uses integer DEFAULT 1
);

--
-- Name: logs; Type: TABLE; Schema: verification; Owner: postgres
--

CREATE TABLE verification.logs (
    id integer NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    session_id text NOT NULL,
    event_type text NOT NULL,
    details jsonb,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP
);

--
-- Name: logs_id_seq; Type: SEQUENCE; Schema: verification; Owner: postgres
--

CREATE SEQUENCE verification.logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

--
-- Name: logs_id_seq; Type: SEQUENCE OWNED BY; Schema: verification; Owner: postgres
--

ALTER SEQUENCE verification.logs_id_seq OWNED BY verification.logs.id;


--
-- Name: sessions; Type: TABLE; Schema: verification; Owner: postgres
--

CREATE TABLE verification.sessions (
    session_id text NOT NULL,
    guild_id bigint NOT NULL,
    user_id bigint NOT NULL,
    ip_address text,
    created_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP,
    expires_at timestamp with time zone NOT NULL,
    completed boolean DEFAULT false,
    failed_attempts integer DEFAULT 0
);

--
-- Name: settings; Type: TABLE; Schema: verification; Owner: postgres
--

CREATE TABLE verification.settings (
    guild_id bigint NOT NULL,
    enabled boolean DEFAULT false,
    level text DEFAULT 'base'::text,
    methods text[] DEFAULT '{}'::text[],
    timeout integer DEFAULT 1800,
    ip_limit boolean DEFAULT false,
    vpn_check boolean DEFAULT false,
    private_tab_check boolean DEFAULT false,
    log_channel_id bigint,
    CONSTRAINT settings_level_check CHECK ((level = ANY (ARRAY['base'::text, 'medium'::text])))
);

--
-- Name: channels; Type: TABLE; Schema: voice; Owner: postgres
--

CREATE TABLE voice.channels (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    owner_id bigint NOT NULL
);

--
-- Name: config; Type: TABLE; Schema: voice; Owner: postgres
--

CREATE TABLE voice.config (
    guild_id bigint NOT NULL,
    category_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    bitrate integer,
    name text,
    status text
);

--
-- Name: channels; Type: TABLE; Schema: voicemaster; Owner: postgres
--

CREATE TABLE voicemaster.channels (
    guild_id bigint NOT NULL,
    channel_id bigint NOT NULL,
    owner_id bigint
);

--
-- Name: configuration; Type: TABLE; Schema: voicemaster; Owner: postgres
--

CREATE TABLE voicemaster.configuration (
    guild_id bigint NOT NULL,
    category_id bigint,
    interface_id bigint,
    channel_id bigint,
    role_id bigint,
    region text,
    bitrate bigint
);

--
-- Name: playlist_tracks id; Type: DEFAULT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.playlist_tracks ALTER COLUMN id SET DEFAULT nextval('audio.playlist_tracks_id_seq'::regclass);


--
-- Name: playlists id; Type: DEFAULT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.playlists ALTER COLUMN id SET DEFAULT nextval('audio.playlists_id_seq'::regclass);


--
-- Name: recently_played id; Type: DEFAULT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.recently_played ALTER COLUMN id SET DEFAULT nextval('audio.recently_played_id_seq'::regclass);


--
-- Name: media id; Type: DEFAULT; Schema: auto; Owner: postgres
--

ALTER TABLE ONLY auto.media ALTER COLUMN id SET DEFAULT nextval('auto.media_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: economy; Owner: postgres
--

ALTER TABLE ONLY economy.transactions ALTER COLUMN id SET DEFAULT nextval('economy.transactions_id_seq'::regclass);


--
-- Name: transactions id; Type: DEFAULT; Schema: economy_schema; Owner: postgres
--

ALTER TABLE ONLY economy_schema.transactions ALTER COLUMN id SET DEFAULT nextval('economy_schema.transactions_id_seq'::regclass);


--
-- Name: moderation id; Type: DEFAULT; Schema: history; Owner: postgres
--

ALTER TABLE ONLY history.moderation ALTER COLUMN id SET DEFAULT nextval('history.moderation_id_seq'::regclass);


--
-- Name: commands id; Type: DEFAULT; Schema: invoke_history; Owner: postgres
--

ALTER TABLE ONLY invoke_history.commands ALTER COLUMN id SET DEFAULT nextval('invoke_history.commands_id_seq'::regclass);


--
-- Name: history id; Type: DEFAULT; Schema: music; Owner: postgres
--

ALTER TABLE ONLY music.history ALTER COLUMN id SET DEFAULT nextval('music.history_id_seq'::regclass);


--
-- Name: playlist_tracks id; Type: DEFAULT; Schema: music; Owner: postgres
--

ALTER TABLE ONLY music.playlist_tracks ALTER COLUMN id SET DEFAULT nextval('music.playlist_tracks_id_seq'::regclass);


--
-- Name: playlists id; Type: DEFAULT; Schema: music; Owner: postgres
--

ALTER TABLE ONLY music.playlists ALTER COLUMN id SET DEFAULT nextval('music.playlists_id_seq'::regclass);


--
-- Name: appeals id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appeals ALTER COLUMN id SET DEFAULT nextval('public.appeals_id_seq'::regclass);


--
-- Name: business_jobs job_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.business_jobs ALTER COLUMN job_id SET DEFAULT nextval('public.business_jobs_job_id_seq'::regclass);


--
-- Name: businesses business_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.businesses ALTER COLUMN business_id SET DEFAULT nextval('public.businesses_business_id_seq'::regclass);


--
-- Name: card_market listing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_market ALTER COLUMN listing_id SET DEFAULT nextval('public.card_market_listing_id_seq'::regclass);


--
-- Name: dockets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dockets ALTER COLUMN id SET DEFAULT nextval('public.dockets_id_seq'::regclass);


--
-- Name: gift_logs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gift_logs ALTER COLUMN id SET DEFAULT nextval('public.gift_logs_id_seq'::regclass);


--
-- Name: job_applications application_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_applications ALTER COLUMN application_id SET DEFAULT nextval('public.job_applications_application_id_seq'::regclass);


--
-- Name: logging_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logging_history ALTER COLUMN id SET DEFAULT nextval('public.logging_history_id_seq'::regclass);


--
-- Name: lottery_history id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lottery_history ALTER COLUMN id SET DEFAULT nextval('public.lottery_history_id_seq'::regclass);


--
-- Name: pet_adventures id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_adventures ALTER COLUMN id SET DEFAULT nextval('public.pet_adventures_id_seq'::regclass);


--
-- Name: pet_trades id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_trades ALTER COLUMN id SET DEFAULT nextval('public.pet_trades_id_seq'::regclass);


--
-- Name: pets pet_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets ALTER COLUMN pet_id SET DEFAULT nextval('public.pets_pet_id_seq'::regclass);


--
-- Name: poll_votes vote_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poll_votes ALTER COLUMN vote_id SET DEFAULT nextval('public.poll_votes_vote_id_seq'::regclass);


--
-- Name: shop_items item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_items ALTER COLUMN item_id SET DEFAULT nextval('public.shop_items_item_id_seq'::regclass);


--
-- Name: social_links id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_links ALTER COLUMN id SET DEFAULT nextval('public.social_links_id_seq'::regclass);


--
-- Name: socials_gradients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socials_gradients ALTER COLUMN id SET DEFAULT nextval('public.socials_gradients_id_seq'::regclass);


--
-- Name: socials_saved_gradients id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socials_saved_gradients ALTER COLUMN id SET DEFAULT nextval('public.socials_saved_gradients_id_seq'::regclass);


--
-- Name: user_transactions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_transactions ALTER COLUMN id SET DEFAULT nextval('public.user_transactions_id_seq'::regclass);


--
-- Name: restore_log id; Type: DEFAULT; Schema: streaks; Owner: postgres
--

ALTER TABLE ONLY streaks.restore_log ALTER COLUMN id SET DEFAULT nextval('streaks.restore_log_id_seq'::regclass);


--
-- Name: logs id; Type: DEFAULT; Schema: verification; Owner: postgres
--

ALTER TABLE ONLY verification.logs ALTER COLUMN id SET DEFAULT nextval('verification.logs_id_seq'::regclass);


--
-- Name: twitch twitch_pkey; Type: CONSTRAINT; Schema: alerts; Owner: postgres
--

ALTER TABLE ONLY alerts.twitch
    ADD CONSTRAINT twitch_pkey PRIMARY KEY (guild_id, twitch_id);


--
-- Name: config config_guild_id_key; Type: CONSTRAINT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.config
    ADD CONSTRAINT config_guild_id_key UNIQUE (guild_id);


--
-- Name: playlist_tracks playlist_tracks_guild_id_user_id_playlist_url_track_uri_key; Type: CONSTRAINT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.playlist_tracks
    ADD CONSTRAINT playlist_tracks_guild_id_user_id_playlist_url_track_uri_key UNIQUE (guild_id, user_id, playlist_url, track_uri);


--
-- Name: playlist_tracks playlist_tracks_pkey; Type: CONSTRAINT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.playlist_tracks
    ADD CONSTRAINT playlist_tracks_pkey PRIMARY KEY (id);


--
-- Name: playlists playlists_guild_id_user_id_playlist_url_key; Type: CONSTRAINT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.playlists
    ADD CONSTRAINT playlists_guild_id_user_id_playlist_url_key UNIQUE (guild_id, user_id, playlist_url);


--
-- Name: playlists playlists_pkey; Type: CONSTRAINT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.playlists
    ADD CONSTRAINT playlists_pkey PRIMARY KEY (id);


--
-- Name: recently_played recently_played_pkey; Type: CONSTRAINT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.recently_played
    ADD CONSTRAINT recently_played_pkey PRIMARY KEY (id);


--
-- Name: statistics statistics_pkey; Type: CONSTRAINT; Schema: audio; Owner: postgres
--

ALTER TABLE ONLY audio.statistics
    ADD CONSTRAINT statistics_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: auto; Owner: postgres
--

ALTER TABLE ONLY auto.media
    ADD CONSTRAINT media_pkey PRIMARY KEY (id);


--
-- Name: media unique_media_config; Type: CONSTRAINT; Schema: auto; Owner: postgres
--

ALTER TABLE ONLY auto.media
    ADD CONSTRAINT unique_media_config UNIQUE (guild_id, channel_id, type);


--
-- Name: disabled disabled_pkey; Type: CONSTRAINT; Schema: commands; Owner: postgres
--

ALTER TABLE ONLY commands.disabled
    ADD CONSTRAINT disabled_pkey PRIMARY KEY (guild_id, channel_id, command);


--
-- Name: ignore ignore_pkey; Type: CONSTRAINT; Schema: commands; Owner: postgres
--

ALTER TABLE ONLY commands.ignore
    ADD CONSTRAINT ignore_pkey PRIMARY KEY (guild_id, target_id);


--
-- Name: restricted restricted_pkey; Type: CONSTRAINT; Schema: commands; Owner: postgres
--

ALTER TABLE ONLY commands.restricted
    ADD CONSTRAINT restricted_pkey PRIMARY KEY (guild_id, role_id, command);


--
-- Name: config config_pkey; Type: CONSTRAINT; Schema: counting; Owner: postgres
--

ALTER TABLE ONLY counting.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (guild_id);


--
-- Name: config config_guild_id_key; Type: CONSTRAINT; Schema: disboard; Owner: postgres
--

ALTER TABLE ONLY disboard.config
    ADD CONSTRAINT config_guild_id_key UNIQUE (guild_id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: economy; Owner: postgres
--

ALTER TABLE ONLY economy.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: transactions transactions_pkey; Type: CONSTRAINT; Schema: economy_schema; Owner: postgres
--

ALTER TABLE ONLY economy_schema.transactions
    ADD CONSTRAINT transactions_pkey PRIMARY KEY (id);


--
-- Name: marriages marriages_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.marriages
    ADD CONSTRAINT marriages_pkey PRIMARY KEY (user_id, partner_id);


--
-- Name: members members_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.members
    ADD CONSTRAINT members_pkey PRIMARY KEY (user_id, related_id);


--
-- Name: profiles profiles_pkey; Type: CONSTRAINT; Schema: family; Owner: postgres
--

ALTER TABLE ONLY family.profiles
    ADD CONSTRAINT profiles_pkey PRIMARY KEY (user_id);


--
-- Name: instagram instagram_pkey; Type: CONSTRAINT; Schema: feeds; Owner: postgres
--

ALTER TABLE ONLY feeds.instagram
    ADD CONSTRAINT instagram_pkey PRIMARY KEY (guild_id, instagram_id);


--
-- Name: pinterest pinterest_pkey; Type: CONSTRAINT; Schema: feeds; Owner: postgres
--

ALTER TABLE ONLY feeds.pinterest
    ADD CONSTRAINT pinterest_pkey PRIMARY KEY (guild_id, pinterest_id);


--
-- Name: reddit reddit_pkey; Type: CONSTRAINT; Schema: feeds; Owner: postgres
--

ALTER TABLE ONLY feeds.reddit
    ADD CONSTRAINT reddit_pkey PRIMARY KEY (guild_id, subreddit_name);


--
-- Name: soundcloud soundcloud_pkey; Type: CONSTRAINT; Schema: feeds; Owner: postgres
--

ALTER TABLE ONLY feeds.soundcloud
    ADD CONSTRAINT soundcloud_pkey PRIMARY KEY (guild_id, soundcloud_id);


--
-- Name: tiktok tiktok_pkey; Type: CONSTRAINT; Schema: feeds; Owner: postgres
--

ALTER TABLE ONLY feeds.tiktok
    ADD CONSTRAINT tiktok_pkey PRIMARY KEY (guild_id, tiktok_id);


--
-- Name: twitter twitter_pkey; Type: CONSTRAINT; Schema: feeds; Owner: postgres
--

ALTER TABLE ONLY feeds.twitter
    ADD CONSTRAINT twitter_pkey PRIMARY KEY (guild_id, twitter_id);


--
-- Name: youtube youtube_pkey; Type: CONSTRAINT; Schema: feeds; Owner: postgres
--

ALTER TABLE ONLY feeds.youtube
    ADD CONSTRAINT youtube_pkey PRIMARY KEY (guild_id, youtube_id);


--
-- Name: authorization authorization_user_id_key; Type: CONSTRAINT; Schema: fortnite; Owner: postgres
--

ALTER TABLE ONLY fortnite."authorization"
    ADD CONSTRAINT authorization_user_id_key UNIQUE (user_id);


--
-- Name: reminder reminder_pkey; Type: CONSTRAINT; Schema: fortnite; Owner: postgres
--

ALTER TABLE ONLY fortnite.reminder
    ADD CONSTRAINT reminder_pkey PRIMARY KEY (user_id, item_id);


--
-- Name: rotation rotation_guild_id_key; Type: CONSTRAINT; Schema: fortnite; Owner: postgres
--

ALTER TABLE ONLY fortnite.rotation
    ADD CONSTRAINT rotation_guild_id_key UNIQUE (guild_id);


--
-- Name: wyr_channels wyr_channels_pkey; Type: CONSTRAINT; Schema: fun; Owner: postgres
--

ALTER TABLE ONLY fun.wyr_channels
    ADD CONSTRAINT wyr_channels_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: moderation moderation_pkey; Type: CONSTRAINT; Schema: history; Owner: postgres
--

ALTER TABLE ONLY history.moderation
    ADD CONSTRAINT moderation_pkey PRIMARY KEY (id);


--
-- Name: commands commands_pkey; Type: CONSTRAINT; Schema: invoke_history; Owner: postgres
--

ALTER TABLE ONLY invoke_history.commands
    ADD CONSTRAINT commands_pkey PRIMARY KEY (id);


--
-- Name: config config_pkey; Type: CONSTRAINT; Schema: joindm; Owner: postgres
--

ALTER TABLE ONLY joindm.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (guild_id);


--
-- Name: albums albums_pkey; Type: CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.albums
    ADD CONSTRAINT albums_pkey PRIMARY KEY (user_id, artist, album);


--
-- Name: artists artists_pkey; Type: CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.artists
    ADD CONSTRAINT artists_pkey PRIMARY KEY (user_id, artist);


--
-- Name: config config_user_id_key; Type: CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.config
    ADD CONSTRAINT config_user_id_key UNIQUE (user_id);


--
-- Name: crown_updates crown_updates_pkey; Type: CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.crown_updates
    ADD CONSTRAINT crown_updates_pkey PRIMARY KEY (guild_id);


--
-- Name: crowns crowns_pkey; Type: CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.crowns
    ADD CONSTRAINT crowns_pkey PRIMARY KEY (guild_id, artist);


--
-- Name: hidden hidden_pkey; Type: CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.hidden
    ADD CONSTRAINT hidden_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: tracks tracks_pkey; Type: CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.tracks
    ADD CONSTRAINT tracks_pkey PRIMARY KEY (user_id, artist, track);


--
-- Name: config config_guild_id_key; Type: CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.config
    ADD CONSTRAINT config_guild_id_key UNIQUE (guild_id);


--
-- Name: member member_pkey; Type: CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.member
    ADD CONSTRAINT member_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: notification notification_pkey; Type: CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.notification
    ADD CONSTRAINT notification_pkey PRIMARY KEY (guild_id);


--
-- Name: role role_pkey; Type: CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.role
    ADD CONSTRAINT role_pkey PRIMARY KEY (guild_id, level);


--
-- Name: role role_role_id_key; Type: CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.role
    ADD CONSTRAINT role_role_id_key UNIQUE (role_id);


--
-- Name: history history_pkey; Type: CONSTRAINT; Schema: music; Owner: postgres
--

ALTER TABLE ONLY music.history
    ADD CONSTRAINT history_pkey PRIMARY KEY (id);


--
-- Name: playlist_tracks playlist_tracks_pkey; Type: CONSTRAINT; Schema: music; Owner: postgres
--

ALTER TABLE ONLY music.playlist_tracks
    ADD CONSTRAINT playlist_tracks_pkey PRIMARY KEY (id);


--
-- Name: playlists playlists_pkey; Type: CONSTRAINT; Schema: music; Owner: postgres
--

ALTER TABLE ONLY music.playlists
    ADD CONSTRAINT playlists_pkey PRIMARY KEY (id);


--
-- Name: config config_pkey; Type: CONSTRAINT; Schema: porn; Owner: postgres
--

ALTER TABLE ONLY porn.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (guild_id);


--
-- Name: access_tokens access_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.access_tokens
    ADD CONSTRAINT access_tokens_pkey PRIMARY KEY (user_id);


--
-- Name: afk afk_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.afk
    ADD CONSTRAINT afk_user_id_key UNIQUE (user_id);


--
-- Name: aliases aliases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.aliases
    ADD CONSTRAINT aliases_pkey PRIMARY KEY (guild_id, name);


--
-- Name: antinuke antinuke_guild_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antinuke
    ADD CONSTRAINT antinuke_guild_id_key UNIQUE (guild_id);


--
-- Name: antiraid antiraid_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.antiraid
    ADD CONSTRAINT antiraid_pkey PRIMARY KEY (guild_id);


--
-- Name: appeal_config appeal_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appeal_config
    ADD CONSTRAINT appeal_config_pkey PRIMARY KEY (guild_id);


--
-- Name: appeal_templates appeal_templates_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appeal_templates
    ADD CONSTRAINT appeal_templates_pkey PRIMARY KEY (guild_id, name);


--
-- Name: appeals appeals_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.appeals
    ADD CONSTRAINT appeals_pkey PRIMARY KEY (id);


--
-- Name: auto_role auto_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auto_role
    ADD CONSTRAINT auto_role_pkey PRIMARY KEY (guild_id, role_id, action);


--
-- Name: avatar_current avatar_current_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avatar_current
    ADD CONSTRAINT avatar_current_pkey PRIMARY KEY (user_id);


--
-- Name: avatar_history_settings avatar_history_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avatar_history_settings
    ADD CONSTRAINT avatar_history_settings_pkey PRIMARY KEY (user_id);


--
-- Name: avatar_history avatar_history_user_id_avatar_url_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.avatar_history
    ADD CONSTRAINT avatar_history_user_id_avatar_url_key UNIQUE (user_id, avatar_url);


--
-- Name: backup backup_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.backup
    ADD CONSTRAINT backup_pkey PRIMARY KEY (key, guild_id);


--
-- Name: beta_dashboard beta_dashboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.beta_dashboard
    ADD CONSTRAINT beta_dashboard_pkey PRIMARY KEY (user_id);


--
-- Name: birthdays birthdays_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.birthdays
    ADD CONSTRAINT birthdays_user_id_key UNIQUE (user_id);


--
-- Name: blacklist blacklist_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blacklist
    ADD CONSTRAINT blacklist_user_id_key UNIQUE (user_id);


--
-- Name: blunt blunt_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.blunt
    ADD CONSTRAINT blunt_pkey PRIMARY KEY (guild_id);


--
-- Name: boost_history boost_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boost_history
    ADD CONSTRAINT boost_history_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: boost_message boost_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boost_message
    ADD CONSTRAINT boost_message_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: booster_role booster_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.booster_role
    ADD CONSTRAINT booster_role_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: boosters_lost boosters_lost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.boosters_lost
    ADD CONSTRAINT boosters_lost_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: business_jobs business_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.business_jobs
    ADD CONSTRAINT business_jobs_pkey PRIMARY KEY (job_id);


--
-- Name: business_stats business_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.business_stats
    ADD CONSTRAINT business_stats_pkey PRIMARY KEY (business_id);


--
-- Name: businesses businesses_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.businesses
    ADD CONSTRAINT businesses_name_key UNIQUE (name);


--
-- Name: businesses businesses_owner_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.businesses
    ADD CONSTRAINT businesses_owner_id_key UNIQUE (owner_id);


--
-- Name: businesses businesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.businesses
    ADD CONSTRAINT businesses_pkey PRIMARY KEY (business_id);


--
-- Name: card_daily card_daily_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_daily
    ADD CONSTRAINT card_daily_pkey PRIMARY KEY (user_id);


--
-- Name: card_drop_channels card_drop_channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_drop_channels
    ADD CONSTRAINT card_drop_channels_pkey PRIMARY KEY (channel_id);


--
-- Name: card_market card_market_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.card_market
    ADD CONSTRAINT card_market_pkey PRIMARY KEY (listing_id);


--
-- Name: clownboard_entry clownboard_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clownboard_entry
    ADD CONSTRAINT clownboard_entry_pkey PRIMARY KEY (guild_id, channel_id, message_id, emoji);


--
-- Name: clownboard clownboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clownboard
    ADD CONSTRAINT clownboard_pkey PRIMARY KEY (guild_id, emoji);


--
-- Name: config config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (guild_id);


--
-- Name: contracts contracts_employee_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contracts
    ADD CONSTRAINT contracts_employee_id_key UNIQUE (employee_id);


--
-- Name: contracts contracts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contracts
    ADD CONSTRAINT contracts_pkey PRIMARY KEY (business_id, employee_id);


--
-- Name: counter counter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.counter
    ADD CONSTRAINT counter_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: crypto crypto_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.crypto
    ADD CONSTRAINT crypto_pkey PRIMARY KEY (user_id, transaction_id);


--
-- Name: daily_messages daily_messages_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daily_messages
    ADD CONSTRAINT daily_messages_pkey PRIMARY KEY (guild_id, date);


--
-- Name: daily_metrics daily_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daily_metrics
    ADD CONSTRAINT daily_metrics_pkey PRIMARY KEY (date);


--
-- Name: daily_stats daily_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.daily_stats
    ADD CONSTRAINT daily_stats_pkey PRIMARY KEY (guild_id, date);


--
-- Name: dalle_credits dalle_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dalle_credits
    ADD CONSTRAINT dalle_credits_pkey PRIMARY KEY (user_id);


--
-- Name: docket_channels docket_channels_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.docket_channels
    ADD CONSTRAINT docket_channels_pkey PRIMARY KEY (guild_id);


--
-- Name: dockets dockets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.dockets
    ADD CONSTRAINT dockets_pkey PRIMARY KEY (id);


--
-- Name: donators donators_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.donators
    ADD CONSTRAINT donators_pkey PRIMARY KEY (user_id);


--
-- Name: economy_access economy_access_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economy_access
    ADD CONSTRAINT economy_access_pkey PRIMARY KEY (user_id);


--
-- Name: economy economy_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.economy
    ADD CONSTRAINT economy_pkey PRIMARY KEY (user_id);


--
-- Name: employee_stats employee_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_stats
    ADD CONSTRAINT employee_stats_pkey PRIMARY KEY (business_id, employee_id);


--
-- Name: fake_permissions fake_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.fake_permissions
    ADD CONSTRAINT fake_permissions_pkey PRIMARY KEY (guild_id, role_id, permission);


--
-- Name: feedback feedback_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.feedback
    ADD CONSTRAINT feedback_pkey PRIMARY KEY (user_id);


--
-- Name: forcenick forcenick_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.forcenick
    ADD CONSTRAINT forcenick_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: gallery gallery_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gallery
    ADD CONSTRAINT gallery_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: gift_logs gift_logs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gift_logs
    ADD CONSTRAINT gift_logs_pkey PRIMARY KEY (id);


--
-- Name: giveaway_settings giveaway_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.giveaway_settings
    ADD CONSTRAINT giveaway_settings_pkey PRIMARY KEY (guild_id);


--
-- Name: goodbye_message goodbye_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.goodbye_message
    ADD CONSTRAINT goodbye_message_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: guild_verification guild_verification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guild_verification
    ADD CONSTRAINT guild_verification_pkey PRIMARY KEY (guild_id);


--
-- Name: guildblacklist guildblacklist_guild_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.guildblacklist
    ADD CONSTRAINT guildblacklist_guild_id_key UNIQUE (guild_id);


--
-- Name: hardban hardban_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hardban
    ADD CONSTRAINT hardban_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: highlights highlights_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.highlights
    ADD CONSTRAINT highlights_pkey PRIMARY KEY (guild_id, user_id, word);


--
-- Name: hourly_metrics hourly_metrics_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.hourly_metrics
    ADD CONSTRAINT hourly_metrics_pkey PRIMARY KEY (hour);


--
-- Name: incidents incidents_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.incidents
    ADD CONSTRAINT incidents_pkey PRIMARY KEY (id);


--
-- Name: invite_config invite_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invite_config
    ADD CONSTRAINT invite_config_pkey PRIMARY KEY (guild_id);


--
-- Name: invite_rewards invite_rewards_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invite_rewards
    ADD CONSTRAINT invite_rewards_pkey PRIMARY KEY (guild_id, role_id);


--
-- Name: invite_stats invite_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invite_stats
    ADD CONSTRAINT invite_stats_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: invite_tracking invite_tracking_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.invite_tracking
    ADD CONSTRAINT invite_tracking_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: job_applications job_applications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_applications
    ADD CONSTRAINT job_applications_pkey PRIMARY KEY (application_id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (user_id);


--
-- Name: logging_history logging_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logging_history
    ADD CONSTRAINT logging_history_pkey PRIMARY KEY (id);


--
-- Name: logging logging_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.logging
    ADD CONSTRAINT logging_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: lottery_history lottery_history_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lottery_history
    ADD CONSTRAINT lottery_history_pkey PRIMARY KEY (id);


--
-- Name: lovense_config lovense_config_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lovense_config
    ADD CONSTRAINT lovense_config_pkey PRIMARY KEY (guild_id);


--
-- Name: lovense_consent lovense_consent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lovense_consent
    ADD CONSTRAINT lovense_consent_pkey PRIMARY KEY (user_id);


--
-- Name: lovense_devices lovense_devices_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lovense_devices
    ADD CONSTRAINT lovense_devices_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: member_stats member_stats_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.member_stats
    ADD CONSTRAINT member_stats_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: message_ranks message_ranks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.message_ranks
    ADD CONSTRAINT message_ranks_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: payment payment_guild_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_guild_id_key UNIQUE (guild_id);


--
-- Name: pet_adventures pet_adventures_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_adventures
    ADD CONSTRAINT pet_adventures_pkey PRIMARY KEY (id);


--
-- Name: pet_trades pet_trades_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pet_trades
    ADD CONSTRAINT pet_trades_pkey PRIMARY KEY (id);


--
-- Name: pets pets_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pets
    ADD CONSTRAINT pets_pkey PRIMARY KEY (pet_id);


--
-- Name: poll_votes poll_votes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_pkey PRIMARY KEY (vote_id);


--
-- Name: poll_votes poll_votes_poll_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_poll_id_user_id_key UNIQUE (poll_id, user_id);


--
-- Name: polls polls_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.polls
    ADD CONSTRAINT polls_pkey PRIMARY KEY (poll_id);


--
-- Name: prefix prefix_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.prefix
    ADD CONSTRAINT prefix_pkey PRIMARY KEY (guild_id);


--
-- Name: publisher publisher_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.publisher
    ADD CONSTRAINT publisher_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: pubsub pubsub_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pubsub
    ADD CONSTRAINT pubsub_id_key UNIQUE (id);


--
-- Name: quoter quoter_guild_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.quoter
    ADD CONSTRAINT quoter_guild_id_key UNIQUE (guild_id);


--
-- Name: reaction_role reaction_role_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reaction_role
    ADD CONSTRAINT reaction_role_pkey PRIMARY KEY (guild_id, message_id, emoji);


--
-- Name: reaction_trigger reaction_trigger_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reaction_trigger
    ADD CONSTRAINT reaction_trigger_pkey PRIMARY KEY (guild_id, trigger, emoji);


--
-- Name: reskin reskin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reskin
    ADD CONSTRAINT reskin_pkey PRIMARY KEY (user_id);


--
-- Name: response_trigger response_trigger_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.response_trigger
    ADD CONSTRAINT response_trigger_pkey PRIMARY KEY (guild_id, trigger);


--
-- Name: role_shops role_shops_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.role_shops
    ADD CONSTRAINT role_shops_pkey PRIMARY KEY (guild_id, role_id);


--
-- Name: roleplay roleplay_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.roleplay
    ADD CONSTRAINT roleplay_pkey PRIMARY KEY (user_id, target_id, category);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (guild_id);


--
-- Name: shop_items shop_items_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_items
    ADD CONSTRAINT shop_items_name_key UNIQUE (name);


--
-- Name: shop_items shop_items_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.shop_items
    ADD CONSTRAINT shop_items_pkey PRIMARY KEY (item_id);


--
-- Name: social_links social_links_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_links
    ADD CONSTRAINT social_links_pkey PRIMARY KEY (id);


--
-- Name: social_links social_links_user_id_type_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_links
    ADD CONSTRAINT social_links_user_id_type_key UNIQUE (user_id, type);


--
-- Name: socials_gradients socials_gradients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socials_gradients
    ADD CONSTRAINT socials_gradients_pkey PRIMARY KEY (id);


--
-- Name: socials socials_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socials
    ADD CONSTRAINT socials_pkey PRIMARY KEY (user_id);


--
-- Name: socials_saved_colors socials_saved_colors_user_id_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socials_saved_colors
    ADD CONSTRAINT socials_saved_colors_user_id_name_key UNIQUE (user_id, name);


--
-- Name: socials_saved_gradients socials_saved_gradients_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socials_saved_gradients
    ADD CONSTRAINT socials_saved_gradients_pkey PRIMARY KEY (id);


--
-- Name: starboard_entry starboard_entry_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.starboard_entry
    ADD CONSTRAINT starboard_entry_pkey PRIMARY KEY (guild_id, channel_id, message_id, emoji);


--
-- Name: starboard starboard_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.starboard
    ADD CONSTRAINT starboard_pkey PRIMARY KEY (guild_id, emoji);


--
-- Name: sticky_message sticky_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sticky_message
    ADD CONSTRAINT sticky_message_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: suggestion_votes suggestion_votes_message_id_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suggestion_votes
    ADD CONSTRAINT suggestion_votes_message_id_user_id_key UNIQUE (message_id, user_id);


--
-- Name: tag_aliases tag_aliases_guild_id_alias_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tag_aliases
    ADD CONSTRAINT tag_aliases_guild_id_alias_key UNIQUE (guild_id, alias);


--
-- Name: tags tags_guild_id_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_guild_id_name_key UNIQUE (guild_id, name);


--
-- Name: thread thread_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.thread
    ADD CONSTRAINT thread_pkey PRIMARY KEY (guild_id, thread_id);


--
-- Name: timezones timezones_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.timezones
    ADD CONSTRAINT timezones_user_id_key UNIQUE (user_id);


--
-- Name: tracker tracker_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tracker
    ADD CONSTRAINT tracker_pkey PRIMARY KEY (guild_id);


--
-- Name: user_cards user_cards_user_id_card_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_cards
    ADD CONSTRAINT user_cards_user_id_card_id_key UNIQUE (user_id, card_id);


--
-- Name: user_items user_items_user_id_item_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_items
    ADD CONSTRAINT user_items_user_id_item_id_key UNIQUE (user_id, item_id);


--
-- Name: user_transactions user_transactions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_transactions
    ADD CONSTRAINT user_transactions_pkey PRIMARY KEY (id);


--
-- Name: vanity vanity_guild_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vanity
    ADD CONSTRAINT vanity_guild_id_key UNIQUE (guild_id);


--
-- Name: vanity_sniper vanity_sniper_guild_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vanity_sniper
    ADD CONSTRAINT vanity_sniper_guild_id_key UNIQUE (guild_id);


--
-- Name: vape vape_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.vape
    ADD CONSTRAINT vape_pkey PRIMARY KEY (user_id);


--
-- Name: warn_actions warn_actions_guild_id_threshold_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warn_actions
    ADD CONSTRAINT warn_actions_guild_id_threshold_key UNIQUE (guild_id, threshold);


--
-- Name: webhook webhook_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.webhook
    ADD CONSTRAINT webhook_pkey PRIMARY KEY (channel_id, webhook_id);


--
-- Name: welcome_message welcome_message_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.welcome_message
    ADD CONSTRAINT welcome_message_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: whitelist whitelist_guild_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.whitelist
    ADD CONSTRAINT whitelist_guild_id_key UNIQUE (guild_id);


--
-- Name: disabled disabled_pkey; Type: CONSTRAINT; Schema: reposters; Owner: postgres
--

ALTER TABLE ONLY reposters.disabled
    ADD CONSTRAINT disabled_pkey PRIMARY KEY (guild_id, channel_id, reposter);


--
-- Name: config config_user_id_key; Type: CONSTRAINT; Schema: reskin; Owner: postgres
--

ALTER TABLE ONLY reskin.config
    ADD CONSTRAINT config_user_id_key UNIQUE (user_id);


--
-- Name: webhook webhook_pkey; Type: CONSTRAINT; Schema: reskin; Owner: postgres
--

ALTER TABLE ONLY reskin.webhook
    ADD CONSTRAINT webhook_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: filter filter_guild_id_key; Type: CONSTRAINT; Schema: snipe; Owner: postgres
--

ALTER TABLE ONLY snipe.filter
    ADD CONSTRAINT filter_guild_id_key UNIQUE (guild_id);


--
-- Name: ignore ignore_pkey; Type: CONSTRAINT; Schema: snipe; Owner: postgres
--

ALTER TABLE ONLY snipe.ignore
    ADD CONSTRAINT ignore_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: daily_channels daily_channels_pkey; Type: CONSTRAINT; Schema: statistics; Owner: postgres
--

ALTER TABLE ONLY statistics.daily_channels
    ADD CONSTRAINT daily_channels_pkey PRIMARY KEY (guild_id, channel_id, date);


--
-- Name: daily daily_pkey; Type: CONSTRAINT; Schema: statistics; Owner: postgres
--

ALTER TABLE ONLY statistics.daily
    ADD CONSTRAINT daily_pkey PRIMARY KEY (guild_id, date, member_id);


--
-- Name: config config_pkey; Type: CONSTRAINT; Schema: stats; Owner: postgres
--

ALTER TABLE ONLY stats.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (guild_id);


--
-- Name: custom_commands custom_commands_pkey; Type: CONSTRAINT; Schema: stats; Owner: postgres
--

ALTER TABLE ONLY stats.custom_commands
    ADD CONSTRAINT custom_commands_pkey PRIMARY KEY (guild_id, command);


--
-- Name: word_usage word_usage_pkey; Type: CONSTRAINT; Schema: stats; Owner: postgres
--

ALTER TABLE ONLY stats.word_usage
    ADD CONSTRAINT word_usage_pkey PRIMARY KEY (guild_id, user_id, word);


--
-- Name: config config_pkey; Type: CONSTRAINT; Schema: streaks; Owner: postgres
--

ALTER TABLE ONLY streaks.config
    ADD CONSTRAINT config_pkey PRIMARY KEY (guild_id);


--
-- Name: restore_log restore_log_pkey; Type: CONSTRAINT; Schema: streaks; Owner: postgres
--

ALTER TABLE ONLY streaks.restore_log
    ADD CONSTRAINT restore_log_pkey PRIMARY KEY (id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: streaks; Owner: postgres
--

ALTER TABLE ONLY streaks.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (guild_id, user_id);


--
-- Name: button button_pkey; Type: CONSTRAINT; Schema: ticket; Owner: postgres
--

ALTER TABLE ONLY ticket.button
    ADD CONSTRAINT button_pkey PRIMARY KEY (identifier, guild_id);


--
-- Name: config config_guild_id_key; Type: CONSTRAINT; Schema: ticket; Owner: postgres
--

ALTER TABLE ONLY ticket.config
    ADD CONSTRAINT config_guild_id_key UNIQUE (guild_id);


--
-- Name: open open_pkey; Type: CONSTRAINT; Schema: ticket; Owner: postgres
--

ALTER TABLE ONLY ticket.open
    ADD CONSTRAINT open_pkey PRIMARY KEY (identifier, guild_id, user_id);


--
-- Name: message message_pkey; Type: CONSTRAINT; Schema: timer; Owner: postgres
--

ALTER TABLE ONLY timer.message
    ADD CONSTRAINT message_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: purge purge_pkey; Type: CONSTRAINT; Schema: timer; Owner: postgres
--

ALTER TABLE ONLY timer.purge
    ADD CONSTRAINT purge_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: username username_pkey; Type: CONSTRAINT; Schema: track; Owner: postgres
--

ALTER TABLE ONLY track.username
    ADD CONSTRAINT username_pkey PRIMARY KEY (username);


--
-- Name: vanity vanity_pkey; Type: CONSTRAINT; Schema: track; Owner: postgres
--

ALTER TABLE ONLY track.vanity
    ADD CONSTRAINT vanity_pkey PRIMARY KEY (vanity);


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: transcribe; Owner: postgres
--

ALTER TABLE ONLY transcribe.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: rate_limit rate_limit_pkey; Type: CONSTRAINT; Schema: transcribe; Owner: postgres
--

ALTER TABLE ONLY transcribe.rate_limit
    ADD CONSTRAINT rate_limit_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: logs logs_pkey; Type: CONSTRAINT; Schema: verification; Owner: postgres
--

ALTER TABLE ONLY verification.logs
    ADD CONSTRAINT logs_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: verification; Owner: postgres
--

ALTER TABLE ONLY verification.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (session_id);


--
-- Name: settings settings_pkey; Type: CONSTRAINT; Schema: verification; Owner: postgres
--

ALTER TABLE ONLY verification.settings
    ADD CONSTRAINT settings_pkey PRIMARY KEY (guild_id);


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: voice; Owner: postgres
--

ALTER TABLE ONLY voice.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: config config_guild_id_key; Type: CONSTRAINT; Schema: voice; Owner: postgres
--

ALTER TABLE ONLY voice.config
    ADD CONSTRAINT config_guild_id_key UNIQUE (guild_id);


--
-- Name: channels channels_pkey; Type: CONSTRAINT; Schema: voicemaster; Owner: postgres
--

ALTER TABLE ONLY voicemaster.channels
    ADD CONSTRAINT channels_pkey PRIMARY KEY (guild_id, channel_id);


--
-- Name: configuration configuration_pkey; Type: CONSTRAINT; Schema: voicemaster; Owner: postgres
--

ALTER TABLE ONLY voicemaster.configuration
    ADD CONSTRAINT configuration_pkey PRIMARY KEY (guild_id);


--
-- Name: albums albums_user_id_fkey; Type: FK CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.albums
    ADD CONSTRAINT albums_user_id_fkey FOREIGN KEY (user_id) REFERENCES lastfm.config(user_id) ON DELETE CASCADE;


--
-- Name: artists artists_user_id_fkey; Type: FK CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.artists
    ADD CONSTRAINT artists_user_id_fkey FOREIGN KEY (user_id) REFERENCES lastfm.config(user_id) ON DELETE CASCADE;


--
-- Name: crowns crowns_user_id_artist_fkey; Type: FK CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.crowns
    ADD CONSTRAINT crowns_user_id_artist_fkey FOREIGN KEY (user_id, artist) REFERENCES lastfm.artists(user_id, artist) ON DELETE CASCADE;


--
-- Name: tracks tracks_user_id_fkey; Type: FK CONSTRAINT; Schema: lastfm; Owner: postgres
--

ALTER TABLE ONLY lastfm.tracks
    ADD CONSTRAINT tracks_user_id_fkey FOREIGN KEY (user_id) REFERENCES lastfm.config(user_id) ON DELETE CASCADE;


--
-- Name: config config_guild_id_fkey; Type: FK CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.config
    ADD CONSTRAINT config_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES public.settings(guild_id) ON DELETE CASCADE;


--
-- Name: member member_guild_id_fkey; Type: FK CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.member
    ADD CONSTRAINT member_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES level.config(guild_id) ON DELETE CASCADE;


--
-- Name: notification notification_guild_id_fkey; Type: FK CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.notification
    ADD CONSTRAINT notification_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES level.config(guild_id) ON DELETE CASCADE;


--
-- Name: role role_guild_id_fkey; Type: FK CONSTRAINT; Schema: level; Owner: postgres
--

ALTER TABLE ONLY level.role
    ADD CONSTRAINT role_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES level.config(guild_id) ON DELETE CASCADE;


--
-- Name: playlist_tracks playlist_tracks_playlist_id_fkey; Type: FK CONSTRAINT; Schema: music; Owner: postgres
--

ALTER TABLE ONLY music.playlist_tracks
    ADD CONSTRAINT playlist_tracks_playlist_id_fkey FOREIGN KEY (playlist_id) REFERENCES music.playlists(id) ON DELETE CASCADE;


--
-- Name: business_jobs business_jobs_business_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.business_jobs
    ADD CONSTRAINT business_jobs_business_id_fkey FOREIGN KEY (business_id) REFERENCES public.businesses(business_id) ON DELETE CASCADE;


--
-- Name: business_stats business_stats_business_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.business_stats
    ADD CONSTRAINT business_stats_business_id_fkey FOREIGN KEY (business_id) REFERENCES public.businesses(business_id) ON DELETE CASCADE;


--
-- Name: clownboard_entry clownboard_entry_guild_id_emoji_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.clownboard_entry
    ADD CONSTRAINT clownboard_entry_guild_id_emoji_fkey FOREIGN KEY (guild_id, emoji) REFERENCES public.clownboard(guild_id, emoji) ON DELETE CASCADE;


--
-- Name: contracts contracts_business_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contracts
    ADD CONSTRAINT contracts_business_id_fkey FOREIGN KEY (business_id) REFERENCES public.businesses(business_id) ON DELETE CASCADE;


--
-- Name: employee_stats employee_stats_business_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee_stats
    ADD CONSTRAINT employee_stats_business_id_fkey FOREIGN KEY (business_id) REFERENCES public.businesses(business_id) ON DELETE CASCADE;


--
-- Name: poll_votes poll_votes_poll_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.poll_votes
    ADD CONSTRAINT poll_votes_poll_id_fkey FOREIGN KEY (poll_id) REFERENCES public.polls(poll_id) ON DELETE CASCADE;


--
-- Name: starboard_entry starboard_entry_guild_id_emoji_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.starboard_entry
    ADD CONSTRAINT starboard_entry_guild_id_emoji_fkey FOREIGN KEY (guild_id, emoji) REFERENCES public.starboard(guild_id, emoji) ON DELETE CASCADE;


--
-- Name: user_items user_items_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.user_items
    ADD CONSTRAINT user_items_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.shop_items(item_id) ON DELETE CASCADE;


--
-- Name: button button_guild_id_fkey; Type: FK CONSTRAINT; Schema: ticket; Owner: postgres
--

ALTER TABLE ONLY ticket.button
    ADD CONSTRAINT button_guild_id_fkey FOREIGN KEY (guild_id) REFERENCES ticket.config(guild_id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

