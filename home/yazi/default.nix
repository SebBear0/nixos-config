{
  pkgs,
  config,
  ...
}: {
  home.file.".config/yazi/theme.toml".source = ./theme.toml;
  home.file.".config/yazi/theme.toml".force = true;

  home.file.".config/yazi/flavors".source = ./flavors;
  home.file.".config/yazi/flavors".force = true;
}

