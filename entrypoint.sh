#!/bin/sh

if [ -z "$SUPABASE_URL" ]; then
  echo "Warning: SUPABASE_URL is not set"
fi

sed -i "s|PLACEHOLDER_SUPABASE_URL|${SUPABASE_URL}|g" /usr/share/nginx/html/index.html
sed -i "s|PLACEHOLDER_SUPABASE_KEY|${SUPABASE_KEY}|g" /usr/share/nginx/html/index.html

echo "Starting Nginx..."
exec "$@"
