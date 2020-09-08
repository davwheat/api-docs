source $(dirname $0)/_vars.sh

echo "${style}Generating $reset"

php "$REPO_PATH/doctum.phar" update doctum-config.php -v

bash $SCRIPTS_PATH/set-redirects.sh php
bash $SCRIPTS_PATH/set-index-file.sh php