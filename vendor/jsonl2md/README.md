# nix-ontouchstart-jsonl2md (Vendored)

## What
This is a vendored version of the `nix-ontouchstart-jsonl2md` tool. It is used to convert `.jsonl` chat logs into Markdown files for easier reading and documentation.

## Why
We vendored this tool to remove the external GitHub dependency from the `nix-ontouchstart-llama_cpp-sessions` repository's `Makefile`. By including the tool directly in the repository, we ensure that the conversion logic is always available locally and consistently across different environments without requiring an internet connection to fetch the remote tool.

## How
1. The source code for `nix-ontouchstart-jsonl2md` was copied from the `aarch64-darwin` branch of the original repository into the `vendor/jsonl2md` subdirectory.
2. The `Makefile` in the root directory was updated to use `nix run ./vendor/jsonl2md` instead of referencing the remote GitHub repository.
3. The `flake.nix` was preserved to allow Nix to build the tool as a local package.
