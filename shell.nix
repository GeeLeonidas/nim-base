{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell {
  # Add executable packages
  packages = [
    clang
    mold
    gdb
    nim2
    nimble-unwrapped
  ];
  
  # Add build dependencies of the listed derivations
  inputsFrom = [

  ];

  # Bash statements that are executed by nix-shell
  shellHook = ''
    export CC="clang"
    export CXX="clang++"
  '';
}