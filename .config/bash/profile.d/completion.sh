#!/bin/bash

case "$(uname -s)" in
    Darwin)
        if [[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]]; then
            . "/usr/local/etc/profile.d/bash_completion.sh"
        fi
        ;;
    Linux)
        if [[ -r "/usr/local/etc/bash_completion" ]]; then
            . "/usr/local/etc/bash_completion"
        fi
        ;;
esac
