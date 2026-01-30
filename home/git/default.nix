{
  pkgs,
  config,
  ...
}:
{
  # Install git
  programs.git = {
    enable = true;
    extraConfig = {
      credential.helper = "libsecret";
    };
    settings = {
      user = {
        name = "Seb Bearsley";
        email = "sebastian.bearsley@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
}
