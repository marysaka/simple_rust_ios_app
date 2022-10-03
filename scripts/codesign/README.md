# codesign

Those scripts help the process of getting a new certificate from Apple.

1. Use ``generate_private_and_csr.sh`` to generate a private key and a CSR.
2. Upload it on [Apple Developer website](https://developer.apple.com/account/resources/certificates/add)
3. Download the resulting certificate and execute ``generate_p12.sh`` to generate the final P12 file that will be used by rcodesign.
