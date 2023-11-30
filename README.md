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
./run.sh node-app
```

```
error: Module not found "file:///Users/myuser/repos/deno-monorepo-example/libs/example-lib/src/greeting".
    at file:///Users/myuser/repos/deno-monorepo-example/libs/example-lib/src/index.ts:1:15
```

### Bun

```sh
./run.sh bun-app
```

```
> node-app@1.0.0 start
> ts-node src/main.ts

Hello Node!
```
