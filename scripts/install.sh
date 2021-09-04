# nv installation script v0.1.0
echo "Installing nv..."

# Initialize variables
dir="$HOME/.config/nvim/"
cmd="git clone https://github.com/shift-d/nv --depth 1 "

# If $XDG_CONFIG_HOME is set then set $dir to $XDG_CONFIG_HOME/nvim/
# Add destination path to $cmd
if [[ -v XDG_CONFIG_HOME ]]; then
    dir="$XDG_CONFIG_HOME/nvim/"
    cmd="${cmd}${dir}"
else
    cmd="${cmd}${dir}"
fi

# If destination path is not empty - exit with a message
if [[ -d "$dir" ]]; then
    echo "Seems like you already have config in this path: \`$dir\`"
    exit 1
fi

# If could not find git - exit with a message
if ! command -v git >/dev/null 2>&1; then
    echo "Git was not found"
    exit 1
fi

# Run $cmd and echo post-installation message if cmd execution did not fail
eval $cmd && echo "nv was successfully installed into ${dir}!\nPlease read ${dir}README.md."
