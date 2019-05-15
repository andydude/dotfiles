#!/bin/bash

# path_helper has a really bad interface,
# we only need the stuff between the quotes.
PATH="$(path_parts $BASH_DIR/paths.d/* $BASH_DIR/paths)"

# path_helper does not support variables,
# so my implementation doesn't either.
PATH="$HOME/.local/bin:$PATH"

export PATH
