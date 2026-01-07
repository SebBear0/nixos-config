{
  pkgs,
  config,
  ...
}: {
  home.file.".config/ghostty/config".source = ./config;
  home.file.".config/ghostty/config".force = true;

  home.file.".config/ghostty/themes/catppuccin-mocha.conf".source = ./themes/catppuccin-mocha.conf;
  home.file.".config/ghostty/themes/catppuccin-mocha.conf".force = true;
}
