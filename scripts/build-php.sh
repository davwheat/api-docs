#!/bin/bash -l

source $(dirname $0)/_vars.sh

echo -e "${style}Generating $reset"

php "$REPO_PATH/doctum.phar" update doctum-config.php --force --no-progress --ignore-parse-errors

bash $SCRIPTS_PATH/set-redirects.sh php
bash $SCRIPTS_PATH/set-index-file.sh php