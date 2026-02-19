import os
import base64


def _generate_fernet_key():
    return base64.urlsafe_b64encode(os.urandom(32)).decode()


class _Dotdict:
    def __init__(self, d=None, **kwargs):
        data = d or {}
        data.update(kwargs)
        for k, v in data.items():
            if isinstance(v, dict):
                v = _Dotdict(v)
            object.__setattr__(self, k, v)

    def __getattr__(self, name):
        return None

    def __repr__(self):
        return f"Config({vars(self)})"


DISCORD = _Dotdict(
    TOKEN=os.environ.get("DISCORD_TOKEN", ""),
)

CLIENT = _Dotdict(
    PREFIX=os.environ.get("BOT_PREFIX", ","),
    DESCRIPTION=os.environ.get("BOT_DESCRIPTION", "evict discord bot"),
    OWNER_IDS={int(x) for x in os.environ.get("OWNER_IDS", "0").split(",") if x.strip()},
    TWITCH_URL=os.environ.get("TWITCH_URL", "https://twitch.tv/directory"),
    SUPPORT_URL=os.environ.get("SUPPORT_URL", "https://discord.gg/evict"),
    INVITE_URL=os.environ.get("INVITE_URL", "https://discord.com/oauth2/authorize"),
    WARP=os.environ.get("WARP_PROXY", ""),
)

RATELIMITS = _Dotdict(
    PER_10S=int(os.environ.get("RATELIMIT_10S", "5")),
    PER_30S=int(os.environ.get("RATELIMIT_30S", "10")),
    PER_1M=int(os.environ.get("RATELIMIT_1M", "20")),
)

LAVALINK = _Dotdict(
    NODE_COUNT=int(os.environ.get("LAVALINK_NODE_COUNT", "1")),
)

AUTHORIZATION = _Dotdict(
    SPOTIFY=_Dotdict(
        CLIENT_ID=os.environ.get("SPOTIFY_CLIENT_ID", ""),
        CLIENT_SECRET=os.environ.get("SPOTIFY_CLIENT_SECRET", ""),
    ),
    REDDIT=_Dotdict(
        CLIENT_ID=os.environ.get("REDDIT_CLIENT_ID", ""),
        CLIENT_SECRET=os.environ.get("REDDIT_CLIENT_SECRET", ""),
    ),
    TWITCH=_Dotdict(
        CLIENT_ID=os.environ.get("TWITCH_CLIENT_ID", ""),
        CLIENT_SECRET=os.environ.get("TWITCH_CLIENT_SECRET", ""),
    ),
    FERNET_KEY=os.environ.get("FERNET_KEY", "") or _generate_fernet_key(),
    WEATHER=os.environ.get("WEATHER_API_KEY", ""),
    JEYY_API=os.environ.get("JEYY_API_KEY", ""),
    OPENAI=os.environ.get("OPENAI_API_KEY", ""),
    KRAKEN=os.environ.get("KRAKEN_API_KEY", ""),
    BACKUPS=_Dotdict(
        HOST=os.environ.get("BACKUP_FTP_HOST", ""),
        USER=os.environ.get("BACKUP_FTP_USER", ""),
        PASSWORD=os.environ.get("BACKUP_FTP_PASSWORD", ""),
    ),
    AVH=_Dotdict(
        URL=os.environ.get("AVH_URL", ""),
        ACCESS_KEY=os.environ.get("AVH_ACCESS_KEY", ""),
    ),
)

DATABASE = _Dotdict(
    DSN=os.environ.get("DATABASE_URL", ""),
)

REDIS = _Dotdict(
    HOST=os.environ.get("REDIS_HOST", "localhost"),
)

NETWORK = _Dotdict(
    HOST=os.environ.get("NETWORK_HOST", "0.0.0.0"),
    PORT=int(os.environ.get("NETWORK_PORT", "8080")),
)

COLORS = _Dotdict(
    NEUTRAL=0x2B2D31,
    APPROVE=0xA4EB78,
    WARN=0xFAA81A,
    DENY=0xFF6464,
)

EMOJIS = _Dotdict(
    AUDIO=_Dotdict(
        PREVIOUS="⏮️",
        PAUSE="⏸️",
        RESUME="▶️",
        SKIP="⏭️",
        QUEUE="📜",
        REPEAT="🔁",
        REPEAT_TRACK="🔂",
    ),
    CONTEXT=_Dotdict(
        APPROVE="<:approve:1271137029474832437>",
        WARN="<:warn:1271137050492469280>",
        DENY="<:deny:1271137037909569567>",
        LEFT="<:left:1271137043462803559>",
        RIGHT="<:right:1271137045656453192>",
        FILTER="<:filter:1271137040552124437>",
        JUUL="<:juul:1271137042309267517>",
    ),
    SOCIAL=_Dotdict(
        WEBSITE="🌐",
        DISCORD="<:discord:1271137039147012178>",
        GITHUB="<:github:1271137041231700028>",
    ),
    STAFF=_Dotdict(
        DEVELOPER="<:developer:1271137038521966714>",
        OWNER="<:owner:1271137044599357470>",
        SUPPORT="<:support:1271137048965914746>",
        TRIAL="<:trial:1271137049439866963>",
        MODERATOR="<:moderator:1271137044054233279>",
        DONOR="<:donor:1271137039834669087>",
        INSTANCE="<:instance:1271137041798443050>",
        STAFF="<:staff:1271137047690776617>",
    ),
    FUN=_Dotdict(
        DUMBASS="🤪",
        LESBIAN="🏳️‍🌈",
        GAY="🏳️‍🌈",
    ),
    PAGINATOR=_Dotdict(
        PREVIOUS="⬅️",
        NEXT="➡️",
        CANCEL="⏹️",
        NAVIGATE="🔢",
    ),
    ECONOMY=_Dotdict(
        WELCOME="🎉",
        GEM="💎",
        CROWN="👑",
        INVIS="⠀",
    ),
    MISC=_Dotdict(
        CONNECTION="🔗",
        AI="🤖",
        ANAYLTICS="📊",
        BITCOIN="₿",
        COMMANDS="⚙️",
        CRYPTO="💰",
        ETHEREUM="Ξ",
        EXTRA_SUPPORT="🎫",
        LITECOIN="Ł",
        MODERATION="🛡️",
        REDUCED_COOLDOWNS="⏱️",
        SECURITY="🔒",
        XRP="✕",
    ),
    BADGES=_Dotdict(
        SERVER_OWNER="👑",
    ),
    INTERFACE=_Dotdict(
        ACTIVITY="📊",
        CLAIM="🎫",
        DECREASE="📉",
        DISCONNECT="🔌",
        GHOST="👻",
        INCREASE="📈",
        INFORMATION="ℹ️",
        LOCK="🔒",
        REVEAL="👁️",
        UNLOCK="🔓",
    ),
    DOCKET=_Dotdict(
        BLACK="⬛",
        CYAN="🟦",
        INFO="ℹ️",
        PURPLE="🟪",
        RED="🟥",
        YELLOW="🟨",
    ),
    POLL=_Dotdict(
        BLR="⬛",
        BRR="⬛",
        SQUARE="⬜",
        WHITE="⬜",
        WLR="⬜",
        WRR="⬜",
    ),
    TICKETS=_Dotdict(
        TRASH="🗑️",
    ),
    SPOTIFY=_Dotdict(
        BLACK="⬛",
        BLACK_RIGHT="▶️",
        DEVICE="📱",
        EXPLCIT="🔞",
        FAVORITE="❤️",
        ICON="🎵",
        LEFT="⬅️",
        LISTENING="🎧",
        NEXT="⏭️",
        PAUSE="⏸️",
        PREVIOUS="⏮️",
        REMOVE="❌",
        REPEAT="🔁",
        RIGHT="➡️",
        SHUFFLE="🔀",
        VOLUME="🔊",
        WHITE="⬜",
    ),
    LOVENSE=_Dotdict(
        LOVENSE="💗",
    ),
)

LOGGER = _Dotdict(
    GUILD_BLACKLIST_LOGGER=int(os.environ.get("GUILD_BLACKLIST_LOGGER", "0")),
    GUILD_JOIN_LOGGER=int(os.environ.get("GUILD_JOIN_LOGGER", "0")),
    USER_BLACKLIST_LOGGER=int(os.environ.get("USER_BLACKLIST_LOGGER", "0")),
)

POSTHOG = _Dotdict(
    API_KEY=os.environ.get("POSTHOG_API_KEY", ""),
    HOST=os.environ.get("POSTHOG_HOST", ""),
)

lastfm = _Dotdict(
    key=os.environ.get("LASTFM_API_KEY", ""),
)
