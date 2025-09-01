#!/bin/bash
cargo run --release -- --config-path ./config.toml 2>&1 | tee logs/app.log &
pid=$!
trap 'kill -INT $pid' INT
wait $pid
