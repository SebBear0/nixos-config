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
  sudo HOME=/home/seb nu
}

# Nix helper commands
def "nx dev" [] {
  nix develop --command nu
}

def "nx os" [] {
  sudo HOME=/home/seb nu --execute "cd /etc/nixos/; clear; jj st"
}

# catppuccin theme
source ~/nu_scripts/themes/catppuccin-mocha.nu

# vi mode
$env.config.edit_mode = 'vi'

alias vi = nvim

$env.PROMPT_COMMAND = {||
	let is_flake = ($env.IN_NIX_SHELL? == "impure" or $env.IN_NIX_SHELL? == "pure")

    let dir = match (do -i { $env.PWD | path relative-to $nu.home-path }) {
        null => $env.PWD
        '' => '~'
        $relative_pwd => ([~ $relative_pwd] | path join)
    }

    let path_color = (if (is-admin) { ansi red_bold } else if ($is_flake) {ansi blue_bold} else { ansi green_bold })
    let separator_color = (if (is-admin) { ansi light_red_bold } else if ($is_flake) {ansi light_blue_bold} else { ansi light_green_bold })
	let nix_hint = (if (is-admin) {"󰆥 "} else if ($is_flake) {"󱄅 "} else {})

    let path_segment = $"($path_color)($nix_hint)($dir)(ansi reset)"


    $path_segment | str replace --all (char path_sep) $"($separator_color)(char path_sep)($path_color)"
}
