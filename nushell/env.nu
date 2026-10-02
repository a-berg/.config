# env.nu
#
# Installed by:
# version = "0.106.1"
#
# Previously, environment variables were typically configured in `env.nu`.
# In general, most configuration can and should be performed in `config.nu`
# or one of the autoload directories.
#
# This file is generated for backwards compatibility for now.
# It is loaded before config.nu and login.nu
#
# See https://www.nushell.sh/book/configuration.html
#
# Also see `help config env` for more options.
#
# You can remove these comments if you want or leave
# them for future reference.
# I tipically use light themes
use std/config light-theme
use std/util "path add"

path add "~/.ghcup/bin/"
path add "~/.local/bin/"
path add "~/.cargo/bin/"
path add "/opt/homebrew/opt/llvm/bin/"
path add "/opt/homebrew/bin/"

$env.LS_COLORS = (vivid generate nord)
$env.EDITOR = "hx"
# ---
$env.TOPIARY_CONFIG_FILE = ($env.HOME | path join Code github.com blindFS topiary languages.ncl)
$env.TOPIARY_LANGUAGE_DIR = ($env.HOME | path join Code github.com blindFS topiary languages)
# ---
$env.config.color_config = (light-theme)
$env.config.table.mode = "light"
$env.config.buffer_editor = "hx"
$env.config.show_banner = false

# need to define XDG_DATA_HOME in Mac for starship to work
if not ('XDG_DATA_HOME' in $env) {
  $env.XDG_DATA_HOME = $"($env.HOME)/.local/share"
}
# same fo XDG_CONFIG
if not ('XDG_CONFIG_HOME' in $env) {
  $env.XDG_CONFIG_HOME = $"($env.HOME)/.config"
}
