to switch the current nixos, this command can be used:

```
sudo nixos-rebuild switch --flake /etc/nixos/#nixos
```

# Invariants
There is still some setup required if using this flake.
- `bevy_cli` is not included.
- `cargo binstall` is not included.
