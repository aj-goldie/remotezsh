
# Make cd automatically show the contents of the directory and permissions in vertical format.
function cd {
    builtin cd "$@" && ls -la
}

# In order to not show the contents, use the command, cdd.
function cdd {
    builtin cd "$@"
}

