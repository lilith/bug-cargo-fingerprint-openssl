
# Cargo fingerprint error prevents caching of openssl-sys when .cargo/config is in use

`INFO:cargo::ops::cargo_rustc::fingerprint: fingerprint error for openssl-sys v0.9.6: precalculated components have changed: overridden build state with hash: 10660744494232260160 != overridden build state with hash: 4104376138846999625`

Despite no changes to any file contents. Occasionally, `./test.sh` will succeed without this, but only for seconds at a time. 

# To fetch and use a specific version of OpenSSL instead of assuming your system has 1.0.2 installed:

1. Install [Conan](https://conan.io)
2. Run `./override_openssl.sh conan`

