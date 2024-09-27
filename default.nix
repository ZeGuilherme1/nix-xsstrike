let
    nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
    pkgs = import nixpkgs { config = {}; overlays =[]; };
in
{
    xsstrike = pkgs.callPackage ./xsstrike.nix { };
} 