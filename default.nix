{ pkgs ? import <nixpkgs> { } }:

pkgs.stdenv.mkDerivation {
  pname = "hello";

  version = "0.1.0";

  src = ./hello.c;

  builder = if pkgs.stdenv.isDarwin then
    ./builder-for-darwin.sh
  else
    ./builder-for-linux.sh;
}
