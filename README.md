# Nix

```text
nix-repl> a = import ./a.nix
nix-repl> b = import ./b.nix
nix-repl> mul = import ./mul.nix
nix-repl> mul a b
12
```

```text
nix-repl> import ./test.nix { a = 5; trueMsg = "ok"; }
trace: ok
true
```

```bash
nix-build
```
