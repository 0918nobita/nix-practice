source $stdenv/setup

clang -Wall -Wextra -O2 -o hello $src

install -m 555 -D -t $out/bin hello
