#!/bin/sh

set -e

if [ "$#" -ne 3 ]; then
    echo "usage <private_cert_path> <private_key_path> <output_private_p12_path>"
    exit 1
fi

PRIVATE_CERT_PATH=$1
PRIVATE_KEY_PATH=$2
OUTPUT_PRIVATE_P12_PATH=$3

openssl x509 -in $PRIVATE_CERT_PATH -inform DER -out private.pem -outform PEM
openssl pkcs12 -export -inkey $PRIVATE_KEY_PATH -in private.pem -out $OUTPUT_PRIVATE_P12_PATH
rm private.pem
