#!/bin/bash
set -e
echo "Displaying files modified within the last 2 minutes:"
find . -mmin -$((2))

#export CARGO_INCREMENTAL=1

export RUST_LOG=cargo::ops::cargo_rustc::fingerprint=info
date "+[%H:%M:%S]"
cargo test