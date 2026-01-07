# yazi 'y' command
def --env y [...args] {
  let tmp = (mktemp -t "yazi-cwd.XXXXXX")
  ^yazi ...$args --cwd-file $tmp
  let cwd = (open $tmp)
  if $cwd != "" and $cwd != $env.PWD {
    cd $cwd
  }
  rm -fp $tmp
}

$env.config.buffer_editor = "nvim"
$env.config.show_banner = false

# battery life helper
def battery [] {
  let battery_info = upower -i /org/freedesktop/UPower/devices/battery_BAT1
  | lines

  let percentage = $battery_info
  | where ($it | str trim | str starts-with "percentage:")
  | first
  | split words
  | last

  let time_remaining = $battery_info
  | where ($it | str trim | str starts-with "time to empty:")
  | first
  | split row ":"
  | last
  | str trim

  $"($percentage)% \(($time_remaining)\)"
}

# Enter nushell instance with administrator priviledges
def sudosh [] {
  sudo -E -s nu
}

# catppuccin theme
source ~/nu_scripts/themes/catppuccin-mocha.nu

# vi mode
$env.config.edit_mode = 'vi'
