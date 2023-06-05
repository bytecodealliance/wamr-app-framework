# wamr-app-framework

**Note**: This repos is not yet available for use.

**Note**: This repos is not yet available for use.

**Note**: This repos is not yet available for use.

# Deps
`wamr-app-framework` need the `wamr-sdk` in `wasm-micro-runtime`. The repos `wasm-micro-runtime` needs to be placed in the `runtime` directory.

Run `runtime/prepare_wamr.sh` firstly, or use `ln -s path_to_wamr wasm-micro-runtime`to create a symbolic link pointing to WAMR.

```shell
cd runtime
#method 1
runtime/prepare_wamr.sh
#method 2
ln -s path_to_wamr wasm-micro-runtime
```

# Todo
[x] app-framework
[x] app-mgr
[x] deps
[x] runtime/wasm-micro-runtime
[x] samples
[x] host-tool
[x] IoT-APP-Store-Demo
[] test-tools/component-test