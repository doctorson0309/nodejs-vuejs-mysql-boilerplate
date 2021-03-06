#!/bin/sh

set -e

mkdir -p /srv/public/static

cat <<EOT > /srv/public/static/config.json
{
  "apiUrl": "$API_URL",
  "format": {
    "timeZone": "Australia/Melbourne",
    "dateTime": "YYYY-MM-DD HH:mm:ss",
    "pickerDateTime": "yyyy-MM-dd HH:mm"
  }
}
EOT

exec "$@"
