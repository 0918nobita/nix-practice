with import <nixpkgs> {};

stdenv.mkDerivation {
    name = "hello";
    src = ./hello.c;
    buildCommand = ''
        gcc -Wall -Wextra -O2 -o hello $src
        install -m 555 -D -t $out/bin hello
    '';
}
