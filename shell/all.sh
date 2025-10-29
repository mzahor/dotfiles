# ${0} → path of the currently running script.
# :A → resolve to an absolute path.
# :h → take its directory (the "head" part).
SCRIPT_DIR="${0:A:h}"

source $SCRIPT_DIR/vars.sh
source $SCRIPT_DIR/aliases.sh
source $SCRIPT_DIR/utils.sh
