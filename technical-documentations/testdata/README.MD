# VOTING Stimmunterlagen Offline Client - Test Data

The test data contains samples to generate, encrypt and sign E-Voting voting cards. All provided sample data is intended to be used for testing purposes only.

## Offline Client Input Data

The folder [offline-client-input-data](./offline-client-input-data/) contains sample data for generating E-Voting voting-cards. The following files can be selected from the data input section at the first wizard step `Selection of data`:

- The [configuration_sample.xml](./offline-client-input-data/configuration_sample.xml)
- The [evoting-print_sample.xml](./offline-client-input-data/evoting-print_sample.xml)
- The [temlates_sample.zip](./offline-client-input-data/templates_sample.zip)

## Certificates

The folder [certificates](./certificates/) contains cryptographic keys for different purposes:

- Verify xml signatures for PRINT and CONFIG input data from Swiss Post. The verification is executed with the [XML Signature Verifier](https://gitlab.com/swisspost-evoting/verifier/verifier) tool and the following key material:
  - Printing Component Private Key Store: [signing_keystore_printing_component.p12](./certificates/keystore)
  - Printing Component Private Key Password: [signing_pw_printing_component.txt](./certificates/keystore)
- Encrypt E-Voting voting-cards with the recipient's public key:
  - Encryption Public Key: [voting.encryption.receiver.cert.pub.pem](./certificates/self-signed)
- Sign E-Voting voting-cards with the recipient's private key. For signing either the keystore or a self-signed certificate can be used:
  - Signature Private Key File (Keystore): [signing_keystore_printing_component.p12](./certificates/keystore)
  - Signature Private Key Password  (Keystore): [signing_pw_printing_component.txt](./certificates/keystore)
  - Signature Private Key File (Self-signed): [voting.signing.sender.cert.p12](./certificates/self-signed)
  - Signature Private Key Password (Self-signed): [cert.passwords.txt](./certificates/self-signed)
- Verify E-Voting voting-cards signature with the sender's public key. For signature verification either the public key from the keystore or the self-signed signing certificate can be used:
  - Signature Public Key File (Keystore): [signing_certificate_printing_component.cer](./certificates/keystore)
  - Signature Public Key File (Self-signed): [voting.signing.sender.cert.pub.pem](./certificates/self-signed)

## Output

The folders `offline-client-output-encrypted` and `offline-client-output-decrypted` contain encrypted and decrypted sample E-Voting voting card PDF files generated with both, the keystore and self-signed cryptographic key material.
