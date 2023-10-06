{ pkgs ? import <nixpkgs> {} }:

with pkgs;
let
  # Add libraries
  libs = [
    # ...
  ];
in
mkShell {
  # Add system dependencies
  packages = [
    clang
    mold
    gdb
    git
    nim2
    nim2Packages.nimble
  ];
  buildInputs = libs;

  # Bash statements that are executed by nix-shell
  shellHook = ''
    export CC="clang"
    export CXX="clang++"
    export LD_LIBRARY_PATH="${lib.makeLibraryPath libs}:$LD_LIBRARY_PATH"
  '';
}
