#!/bin/sh

set -e

APP_NAME=simple_rust_ios_app
TARGET="aarch64-apple-ios"
PROFILE="release"
USE_CARGO_BUNDLE="0"
PRIVATE_DIRECTORY=../private
SDK_TARGET=sdk_target/ios15.yml
SDK_PATH=./sdk/iPhoneOS15.5.sdk

mkdir -p $SDK_PATH
./scripts/create_sdk_stub $SDK_TARGET $SDK_PATH
./scripts/create_ipa $APP_NAME $PRIVATE_DIRECTORY $TARGET $PROFILE $USE_CARGO_BUNDLE
./scripts/install_ipa $APP_NAME
#rm $APP_NAME.ipa
