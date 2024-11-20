{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    parts.url = "github:hercules-ci/flake-parts";
    systems.url = "github:nix-systems/default";
  };

  outputs = inputs @ { parts, systems, ... }: parts.lib.mkFlake { inherit inputs; } {
    systems = import systems;

    perSystem = { pkgs, ... }: {
      devShells.default = pkgs.mkShell {
        packages = with pkgs; [
          deno
          direnv
          git
          nix-direnv
          pandoc
          soupault
        ];
      };

      formatter = pkgs.writeShellScriptBin "formatter" ''
        ${pkgs.deno}/bin/deno fmt
        ${pkgs.nixpkgs-fmt}/bin/nixpkgs-fmt .
      '';
    };
  };
}
