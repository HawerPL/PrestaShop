#!/bin/sh
set -e

echo "Loading secrets from /run/secrets"

load_secret() {
    var_name="$1"
    file_var="${var_name}_FILE"

    # sh-kompatybilny sposób odczytu wartości zmiennej dynamicznie
    file_path=$(eval echo "\$$file_var")

    if [ -n "$file_path" ] && [ -f "$file_path" ]; then
        secret_val=$(cat "$file_path")
        export "$var_name"="$secret_val"
        echo "  Loaded: $var_name"
    else
        echo "  Skipped: $var_name (brak pliku: $file_path)"
    fi
}

load_secret DB_USER
load_secret DB_PASSWD
load_secret ADMIN_MAIL
load_secret ADMIN_PASSWD

exec /tmp/docker_run.sh "$@"