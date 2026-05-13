{ pkgs, ... }:
{
  languages.nix.enable = true;
  packages = with pkgs; [
    yaml-language-server
    yamlfmt
  ];
}
