{
  pkgs,
  config,
  ...
}: {
  # Install jujutsu
  programs.jujutsu = {
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

