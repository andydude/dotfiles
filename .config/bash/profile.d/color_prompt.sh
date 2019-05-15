# Setup a red prompt for root and a green one for users.
# rename this file to color_prompt.sh to actually enable it
NORMAL="\[\e[0m\]"
RED="\[\e[1;31m\]"
GREEN="\[\e[1;32m\]"
GRAY="\[\e[37m\]"
if [ "$USER" = root ]; then
PS1="$GRAY[$RED\u@\h$GRAY:$NORMAL\w$GRAY]$RED\n# $NORMAL"
else
PS1="$GRAY[$GREEN\u@\h$GRAY:$NORMAL\w$GRAY]$GREEN\n\$ $NORMAL"
fi
