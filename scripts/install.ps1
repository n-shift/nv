# nv installation script v0.1.0
Write-Host "Installing nv..."

# Initialize variables
$dir = "$env:LOCALAPPDATA\nvim\"
$cmd = "git clone https://github.com/shift-d/nv --depth 1 "

# If $env:XDG_CONFIG_HOME is set then set $dir to $XDG_CONFIG_HOME\nvim\
# Add destination path to $cmd
if (!($env:XDG_CONFIG_HOME -eq $null)) {
    $dir = "$env:XDG_CONFIG_HOME\nvim\"
    $cmd = "${cmd}${dir}"
} else {
    $cmd = "${cmd}${dir}"
}

# If destination path is not empty - exit with a message
if (Test-Path "$dir") {
    Write-Host "Seems like you already have config in this path: ``${dir}``"
    exit 1
}

# If cannot find git - abort script execution with an error
if (!(Get-Command "git")) {
    Write-Error "git.exe was not found"
    exit 1
}

# Run $cmd and echo post-installation message if cmd execution did not fail
Invoke-Expression $cmd && Write-Host "nv was successfully installed into ${dir}!`nPlease read ${dir}README.md."
