{
  pkgs,
  config,
  ...
}:
{
  home.file.".config/xdg-desktop-portal-termfilechooser/config".source = ./config;
  home.file.".config/xdg-desktop-portal-termfilechooser/config".force = true;

  home.file.".config/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh".source = ./yazi-wrapper.sh;
  home.file.".config/xdg-desktop-portal-termfilechooser/yazi-wrapper.sh".force = true;
}
