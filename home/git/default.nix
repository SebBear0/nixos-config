{
  pkgs,
  config,
  ...
}: {
  # Install git
  programs.git = {
    enable = true;
    settings = {
      user = {
        name = "Seb Bearsley";
        email = "sebastian.bearsley@gmail.com";
      };
      init.defaultBranch = "main";
    };
  };
}

