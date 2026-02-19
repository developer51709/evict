# Evict Discord Bot

## Overview
Evict is a multi-purpose Discord bot with features including moderation, economy, music (via Lavalink), fun commands, configuration management, and more.

## Project Structure
- `main.py` - Main bot entry point, defines the `Evict` bot class
- `config.py` - Configuration module reading from environment variables
- `cogs/` - Bot command modules (audio, config, economy, fun, etc.)
- `core/client/` - Core client components (database, browser, redis, help, context)
- `managers/` - Backup, paginator, parser utilities
- `processors/` - Event processors (antinuke, audio, logging, moderation)
- `tools/` - Utility functions, converters, handlers
- `langs/` - Language/locale files
- `save/` - Save/soundboard functionality
- `evict-dashboard/` - Next.js dashboard (separate frontend, not active)
- `cookies.txt` - Mozilla cookie jar for browser automation

## Running the Bot
The bot runs via the "Discord Bot" workflow which sets required environment variables:
- `MAGICK_HOME` for ImageMagick/wand library
- `LD_LIBRARY_PATH` for libstdc++ and ImageMagick shared libraries

## Required Environment Variables (Secrets)
- `DISCORD_TOKEN` - Discord bot token (required to start)
- `DATABASE_URL` - PostgreSQL connection string
- `REDIS_HOST` - Redis server host

### Optional API Keys
- `SPOTIFY_CLIENT_ID` / `SPOTIFY_CLIENT_SECRET` - Spotify integration
- `OPENAI_API_KEY` - OpenAI API access
- `WEATHER_API_KEY` - Weather API
- `LASTFM_API_KEY` - Last.fm integration
- `FERNET_KEY` - Encryption key (auto-generated if not set)
- `OWNER_IDS` - Comma-separated Discord user IDs for bot owners
- `BOT_PREFIX` - Command prefix (default: `,`)

## Dependencies
- Python 3.12
- System: gcc (libstdc++), imagemagick
- Python packages defined in `requirements.txt`

## Recent Changes
- 2026-02-19: Created `config.py` to provide configuration via environment variables (was missing from repo)
- 2026-02-19: Created `cookies.txt` for browser handler
- 2026-02-19: Configured workflow with proper `LD_LIBRARY_PATH` and `MAGICK_HOME`
