# Deno / Node Monorepo Example

This repo is a minimal example to demonstrate the difficulties of sharing code between Deno & Node apps.

## Setup

```sh
./setup.sh
```

## Run

### Node

```sh
./run.sh node-app
```

```
> node-app@1.0.0 start
> ts-node src/main.ts

Hello Node!
```

### Deno

```sh
./run.sh deno-app
```

```text
Warning Sloppy imports are not recommended and have a negative impact on performance.
Warning Sloppy module resolution (hint: add .ts extension)
    at file:///home/ben/repos/deno-node-monorepo-example/libs/example-lib/src/index.ts:1:15
Hello Deno
```

This now works, despite the warning. However, type checking this will produce errors and the VS Code extension also doesn't offer support for unstable sloppy imports.

```sh
$ deno check --unstable-sloppy-imports apps/deno-app/main.ts
error: Module not found "file:///example-lib".
    at file:///home/ben/repos/deno-node-monorepo-example/apps/deno-app/main.ts:1:29
```

### Bun

```sh
./run.sh bun-app
```

```
Hello Bun!
```
