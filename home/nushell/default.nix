{
  pkgs,
  config,
  ...
}: {
  home.file.".config/nushell/config.nu".source = ./config.nu;
  home.file.".config/nushell/config.nu".force = true;

  home.file."nu_scripts/themes/catppuccin-mocha.nu".source = ./catppuccin-mocha.nu;
  home.file."nu_scripts/themes/catppuccin-mocha.nu".force = true;

  programs.nushell = {
    enable = true;
  };
}
