{
  pkgs,
  config,
  ...
}: {
  home.file.".config/waybar/config.jsonc".source = ./config.jsonc;
  home.file.".config/waybar/config.jsonc".force = true;

  home.file.".config/waybar/mocha.css".source = ./mocha.css;
  home.file.".config/waybar/mocha.css".force = true;

  home.file.".config/waybar/style.css".source = ./style.css;
  home.file.".config/waybar/style.css".force = true;

  programs.waybar = {
    enable = true;
  };
}
