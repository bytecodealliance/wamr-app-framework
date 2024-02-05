# WebAssembly Micro Runtime Application Framework

[BA]: https://bytecodealliance.org/

**[Guide](https://wamr.gitbook.io/)**&emsp;&emsp;**[Website](https://bytecodealliance.github.io/wamr.dev)**&emsp;&emsp;**[Chat](https://bytecodealliance.zulipchat.com/#narrow/stream/290350-wamr)**

[Use WAMR-App-framework](./doc/wamr_api.md) | [Samples](./samples/README.md)

WebAssembly Micro Runtime Application Framework (WAMR-App-framework) is a comprehensive framework for programming WebAssembly (Wasm) applications for device and IoT usages. The framework supports running multiple applications, that are based on the event driven programming model.

It includes a few parts as below:
- [App-framework](./app-framework/README.md): A framework for supporting APIs for the Wasm applications, and it include same app library:
  - [Timer](./app-framework/base)
  - [Connection](./app-framework/connection)
  - [Sensor](./app-framework/sensor)
  - [WGL](./app-framework/wgl)

- [App-manager](./app-mgr/README.md): a framework for dynamical loading the Wasm module remotely
- Useful components and tools for building real solutions with WAMR-App-framework
  - [Component-test](./test-tools/component-test/README.md): A test suite to verify the basic components of WAMR work well in combination.
  - [IoT-APP-Store-Demo](./test-tools/IoT-APP-Store-Demo/README.md): A demo of Wasm application management portal for WAMR
  - [Assembly-script on WAMR](./assembly-script/README.md): A project based on [Wasm Micro Runtime](https://github.com/bytecodealliance/wasm-micro-runtime) (WAMR) and [AssemblyScript](https://github.com/AssemblyScript/assemblyscript). It implements some of the `wamr app framework` in *assemblyscript*, which allows you to write some applications in *assemblyscript* and dynamically installed on *WAMR Runtime*
  - [WAMR-SDK](./wamr-sdk/README.md): The **[WAMR SDK](./wamr-sdk)** tools is helpful to integrate **WAMR** with your project and generate APP SDK for developing WASM apps. It supports menu configuration for selecting WAMR components and builds the WAMR to a SDK package that includes **runtime SDK** and **APP SDK**.

## Getting started
- Just try this sample: [simple](./samples/simple/README.md)

License
=======
WAMR-App-framework uses the same license as LLVM: the `Apache 2.0 license` with the LLVM
exception. See the LICENSE file for details. This license allows you to freely
use, modify, distribute and sell your own products based on WAMR.
Any contributions you make will be under the same license.

# More resources
- [Who use WAMR?](https://github.com/bytecodealliance/wasm-micro-runtime/wiki)
- [WAMR Blogs](https://bytecodealliance.github.io/wamr.dev/blog/)
- [Community news and events](https://bytecodealliance.github.io/wamr.dev/events/)
- [WAMR TSC meetings](https://github.com/bytecodealliance/wasm-micro-runtime/wiki/TSC-meeting-notes)
