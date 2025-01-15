# Info
you can modify the username variable at the top of configuration.nix to change the username

default password: changeme

You will need to provide the hardware-configuration.nix, if you don't know the specifics of your hardware you can generate them at install time with `nixos-generate-config --show-hardware-config > hardware-configuration.nix`

Updating will look like `nixos-rebuild switch --flake .#simple`
