#!/bin/bash

cd dist
echo "fetching j2objc"
curl -O https://j2objc.googlecode.com/files/j2objc-0.8.6.1.zip
sha1sum j2objc-0.8.6.1.zip
sha1sum -c - <<EOF
4f25b6bd44b9e5d79f2c38b5e20607495ec6a693 j2objc-0.8.6.1.zip
EOF
unzip -o -q j2objc-0.8.6.1.zip
mkdir -p lib
cp j2objc-0.8.6.1/lib/*.a lib/
