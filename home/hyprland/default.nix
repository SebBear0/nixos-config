{
  pkgs,
  config,
  ...
}: {
  home.file.".config/hypr/hyprland.conf".source = ./hyprland.conf;
  home.file.".config/hypr/hyprland.conf".force = true;

  home.file.".config/hypr/hyprlock.conf".source = ./hyprlock.conf;
  home.file.".config/hypr/hyprlock.conf".force = true;

  home.file.".config/hypr/mocha.conf".source = ./mocha.conf;
  home.file.".config/hypr/mocha.conf".force = true;

  home.file.".local/share/icons/catppuccin-mocha-dark-cursors".source = ./catppuccin-mocha-dark-cursors;
  home.file.".local/share/icons/catppuccin-mocha-dark-cursors".force = true;

  home.file."wallpapers/wallpaper.jxl".source = ./wallpaper.jxl;
  home.file."wallpapers/wallpaper.jxl".force = true;

  services.hyprpaper = {
    enable = true;
    settings = {
      preload = [
        "~/wallpapers/wallpaper.jxl"
      ];
      wallpaper = [
        ",~/wallpapers/wallpaper.jxl"
      ];
    };
  };
}
