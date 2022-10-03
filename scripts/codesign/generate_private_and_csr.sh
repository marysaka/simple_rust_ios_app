#!/bin/sh

set -e

if [ "$#" -ne 5 ]; then
    echo "usage <email> <common_name> <country> <output_private_key_path> <output_csr_path>"
    exit 1
fi

EMAIL=$1
COMMON_NAME=$2
COUNTRY=$3
OUTPUT_PRIVATE_KEY_PATH=$4
OUTPUT_CSR_PATH=$5

openssl genrsa -out $OUTPUT_PRIVATE_KEY_PATH 2048
openssl req -new -key $OUTPUT_PRIVATE_KEY_PATH -out $OUTPUT_CSR_PATH -subj "/emailAddress=$EMAIL, CN=$COMMON_NAME, C=$COUNTRY"
