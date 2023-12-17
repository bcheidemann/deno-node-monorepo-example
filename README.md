# Deno / Node Monorepo Example

This repo is a minimal example to demonstrate the difficulties of sharing code between Deno & Node apps.

## Setup

```sh
./setup.sh
```

## Apps

### Node

```sh
$ ./run.sh node-app

> node-app@1.0.0 start
> ts-node src/main.ts

Hello Node!
```

```sh
$ ./check.sh app node-app

> node-app@1.0.0 check
> tsc --noEmit

```

### Deno

```sh
$ ./run.sh deno-app
Warning Sloppy imports are not recommended and have a negative impact on performance.
Warning Sloppy module resolution (hint: add .ts extension)
    at file:///home/user/repos/deno-node-monorepo-example/libs/example-lib/src/index.ts:1:15
Hello Deno!
```

```sh
$ ./check.sh app deno-app
Warning Sloppy module resolution (hint: add .ts extension)
    at file:///home/user/repos/deno-node-monorepo-example/libs/example-lib/src/index.ts:1:15
Warning Sloppy module resolution (hint: add .ts extension)
    at file:///home/user/repos/deno-node-monorepo-example/libs/example-lib/src/index.ts:1:15
```

As of Deno v1.39.0 this now works fine. However, for editor support we must either:

1. Have a single root-level `deno.json` for all deno projects in our monorepo
2. Set `deno.config` in `.vscode/settings.json`, prohibiting multiple Deno projects in our monorepo

### Bun

```sh
$ ./run.sh bun-app
Hello Bun!
```

```sh
$ ./check.sh app bun-app

> check
> tsc --noEmit

```

## Libs

### Example

```sh
$ ./check.sh lib example-lib

> example-lib@1.0.0 check
> tsc --noEmit

```
