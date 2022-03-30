with import <nixpkgs> {};

stdenv.mkDerivation {
    pname = "hello";
    version = "0.1.0";
    src = ./hello.c;
    builder = ./builder.sh;
}
