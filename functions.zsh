
# Make cd automatically show the contents of the directory.
function cd {
    builtin cd "$@" && ls -a
}

# In order to not show the contents, use the command, cdd.
function cdd {
    builtin cd "$@"
}

