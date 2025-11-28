# VOTING Stimmunterlagen Offline Client - Test Data

Sample data is available to generate, encrypt and sign E-Voting voting cards. The sample data is intended to be used for testing purposes only.

Input data version compatibility matrix:

|Test Data Set|Post Print|Post Config|XML Siging Tool|
|---|---|---|---|
|[offline-client-input-data-v1](./offline-client-input-data-v1/)|Version 1|Version 6|Version 4|
|[offline-client-input-data-v2](./offline-client-input-data-v2/)|Version 2|Version 7|Version 5|

In the following chapters the test data set v1 is used for demonstration purpose.

## Offline Client Input Data

The folder [offline-client-input-data-v1](./offline-client-input-data-v1/) contains sample data for generating E-Voting voting-cards. The following files can be selected from the data input section at the first wizard step `Selection of data`:

- The [configuration-v6_sample.xml](./offline-client-input-data-v1/configuration-v6_sample.xml)
- The [evoting-print-v1_sample.xml](./offline-client-input-data-v1/evoting-print-v1_sample.xml)
- The [temlates_sample.zip](./offline-client-input-data-v1/templates_sample.zip)
- Verify xml signatures for PRINT and CONFIG input data from Swiss Post. The verification is executed with the [XML Signature Verifier](https://gitlab.com/swisspost-evoting/verifier/verifier) tool and the following key material:
  - Printing Component Private Key Store: [signing_keystore_printing_component.p12](./offline-client-input-data-v1/signing_keystore_printing_component.p12)
  - Printing Component Private Key Password: [signing_pw_printing_component.txt](./offline-client-input-data-v1/signing_pw_printing_component.txt)

## Certificates

The folder [certificates](./certificates/) contains the cryptographic material for encryption and signing of the voting cards:

- Encrypt E-Voting voting-cards with the recipient's public key:
  - Encryption Public Key: [voting.encryption.receiver.cert.pub.pem](./certificates/self-signed)
- Sign E-Voting voting-cards with the recipient's private key. For signing either the [keystore](./offline-client-input-data-v1) or a self-signed certificate can be used:
  - Signature Private Key File (Self-signed): [voting.signing.sender.cert.p12](./certificates/self-signed)
  - Signature Private Key Password (Self-signed): [cert.passwords.txt](./certificates/self-signed)
- Verify E-Voting voting-cards signature with the sender's public key. For signature verification either the public key from the keystore or the self-signed signing certificate can be used:
  - Signature Public Key File (Keystore): [signing_certificate_printing_component.cer](./offline-client-input-data-v1)
  - Signature Public Key File (Self-signed): [voting.signing.sender.cert.pub.pem](./certificates/self-signed)

## Output

The folders [offline-client-output-encrypted-v1](./offline-client-output-encrypted-v1) and [offline-client-output-decrypted-v1](./offline-client-output-decrypted-v1) contain encrypted and decrypted sample E-Voting voting card PDF files generated with both, the keystore and self-signed cryptographic key material.
