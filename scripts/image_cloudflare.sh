#! /bin/sh
/image_baseline.sh
/usr/local/bin/wrangler pages deploy /app/.compiiile/dist --project-name="$CLOUDFLARE_PROJECT_NAME"
