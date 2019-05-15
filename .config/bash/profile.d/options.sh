#!/bin/bash

# If set, Bash checks the window size after each external (non-builtin) command
# and, if necessary, updates the values of LINES and COLUMNS.
# This option is enabled by default.
shopt -s checkwinsize

# If set, the history list is appended to the file named by the value of the
# HISTFILE variable when the shell exits, rather than overwriting the file.
shopt -s histappend

# Enable ‘!’ style history substitution (see History Interaction).
# This option is on by default for interactive shells.
set +o histexpand

# If set, allow a word beginning with # to cause that word and all remaining
# characters on that line to be ignored in an interactive shell.
# This option is enabled by default.
#set +o interactive-comments

# This option shall be supported if the implementation supports the
# User Portability Utilities option. All jobs shall be run in their own
# process groups. Immediately before the shell issues a prompt after completion
# of the background job, a message reporting the exit status of the background
# job shall be written to standard error. If a foreground job stops, the shell
# shall write a message to standard error to that effect, formatted as described
# by the jobs utility. In addition, if a job changes status other than exiting
# (for example, if it stops for input or output or is stopped by a SIGSTOP signal),
# the shell shall write a similar message immediately prior to writing the next
# prompt. This option is enabled by default for interactive shells.
set +o monitor

# This option shall be supported if the implementation supports the
# User Portability Utilities option. It shall cause the shell to notify
# the user asynchronously of background job completions.
set +o notify

# Prevent the entry of function definitions into the command history.
set -o nolog
