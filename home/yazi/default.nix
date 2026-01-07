{
  pkgs,
  config,
  ...
}: {
  home.file.".config/yazi/theme.toml".source = ./theme.toml;
  home.file.".config/yazi/theme.toml".force = true;

  home.file.".config/yazi/catppuccin-mocha.tmTheme".source = ./catppuccin-mocha.tmTheme;
  home.file.".config/yazi/catppuccin-mocha.tmTheme".force = true;

  home.file.".config/yazi/init.lua".source = ./init.lua;
  home.file.".config/yazi/init.lua".force = true;
}

