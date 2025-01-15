{
    inputs = {
        nixpks.url = "github:NixOS/nixpkgs/nixos-24.11";
    };

    outputs = inputs: let
        system = "x86_64-linux";
        inherit (inputs.nixpkgs) lib;

        pkgs = import inputs.nixpkgs {
            inherit system;
            config.allowUnfree = true;
        };
    in {
        nixosConfigurations = {
            simple = lib.nixosSystem {
                specialArgs = {inherit pkgs inputs;};
                modules = [./configuration.nix];
            };
        };
    };
}
