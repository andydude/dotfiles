#!/bin/bash

# When this option is on, the export attribute shall be set for each
# variable to which an assignment is performed; see XBD Variable Assignment.
# If the assignment precedes a utility name in a command, the export attribute
# shall not persist in the current execution environment after the utility
# completes, with the exception that preceding one of the special built-in
# utilities causes the export attribute to persist after the built-in has
# completed. If the assignment does not precede a utility name in the command,
# or if the assignment is a result of the operation of the getopts or read
# utilities, the export attribute shall persist until the variable is unset.
# See also <https://pubs.opengroup.org/onlinepubs/9699919799/utilities/V3_chap02.html#set>
set -o allexport

. "$BASH_DIR/environment"

# See also: top of this file.
set +o allexport
