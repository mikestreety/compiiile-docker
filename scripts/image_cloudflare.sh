#! /bin/sh
/usr/local/bin/compiiile build
/usr/local/bin/wrangler pages deploy /app/.compiiile/dist --project-name="$CLOUDFLARE_PROJECT_NAME"
