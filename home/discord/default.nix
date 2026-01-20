{
  pkgs,
  config,
  ...
}:
{
  home.file.".config/discord/settings.json".source = ./settings.json;
  home.file.".config/discord/settings.json".force = true;
}
