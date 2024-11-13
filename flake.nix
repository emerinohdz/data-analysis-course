{
  description = "A Nix Flake for the data-analysis TWs course";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }: 
    flake-utils.lib.eachDefaultSystem (system: let
      pkgs = import nixpkgs { inherit system; };

    in {
      devShell = pkgs.mkShell {
        buildInputs = [
          pkgs.curl
          pkgs.unzip
          pkgs.gnumake
          pkgs.openssl
          pkgs.git
          pkgs.python311
          pkgs.python311Packages.pip
        ];

        shellHook = ''
          VENV=.venv
          if test ! -d $VENV; then
              python3 -m venv $VENV
          fi
          source ./$VENV/bin/activate
        '';
      };
    });
}
