# bun-app

To install dependencies:

```bash
bun install
```

To run:

```bash
bun run main.ts
```

This project was created using `bun init` in bun v1.0.14. [Bun](https://bun.sh) is a fast all-in-one JavaScript runtime.

## Notes on Remapping Imports

Bun allows remapping imports via the `tsconfig.json` `paths` property. See the [Bun documentation](https://bun.sh/guides/runtime/tsconfig-paths) for more details.

Note that to remap paths that are not under the root directory of the TypeScript project `compilerOptions.composite` must not be set to `true`.
