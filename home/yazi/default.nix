{
  pkgs,
  config,
  ...
}:
{
  home.file.".config/yazi/theme.toml".source = ./theme.toml;
  home.file.".config/yazi/theme.toml".force = true;

  home.file.".config/yazi/flavors".source = ./flavors;
  home.file.".config/yazi/flavors".force = true;

  home.file.".config/yazi/plugins".source = ./plugins;
  home.file.".config/yazi/plugins".force = true;

  home.file.".config/yazi/init.lua".source = ./init.lua;
  home.file.".config/yazi/init.lua".force = true;

  home.file.".config/yazi/keymap.toml".source = ./keymap.toml;
  home.file.".config/yazi/keymap.toml".force = true;
}
