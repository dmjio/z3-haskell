{ pkgs ? import <nixpkgs> {} }:
  pkgs.haskellPackages.callPackage ./z3-haskell.nix { inherit (pkgs) z3; }
