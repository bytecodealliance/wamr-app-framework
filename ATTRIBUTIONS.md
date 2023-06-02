WebAssembly Micro Runtime Appication Framework Attributions
======================================

WAMR-APP-FRAMEWORK project reused some components from other open source project:
- **cJson**: used in the host_tool for remotely managing wasm applications
- **contiki-ng**: for the coap protocol implementation
- **LVGL**: for the gui samples and wrapped the wasm graphic layer
- **zephyr**: for several platform specific examples

|  third party components | version number | latest release | vendor pages | CVE details |
| --- | --- | --- | --- | --- |
| cjson | 1.7.10 | 1.7.14 | https://github.com/DaveGamble/cJSON | https://www.cvedetails.com/vendor/19164/Cjson-Project.html |
| contiki-ng (er-coap) | unspecified | 3.0 | https://github.com/contiki-os/contiki | https://www.cvedetails.com/vendor/16528/Contiki-os.html |
| LVGL | 6.0.1 | 7.11.0 | https://lvgl.io/ | |
| zephyr | unspecified | v2.5.0 | https://www.zephyrproject.org/ | https://www.cvedetails.com/vendor/19255/Zephyrproject.html |

## Licenses

### cJson

[LICENSE](./test-tools/host-tool/external/cJSON/LICENSE)

### contiki-ng

[LICENSE](./core/shared/coap/er-coap/LICENSE.md)

### LVGL

[LICENSE](./samples/littlevgl/LICENCE.txt)

[LICENSE](./core/app-framework/wgl/app/wa-inc/lvgl/LICENCE.txt)


### zephyr

[LICENSE](./samples/gui/wasm-runtime-wgl/src/platform/zephyr/LICENSE)