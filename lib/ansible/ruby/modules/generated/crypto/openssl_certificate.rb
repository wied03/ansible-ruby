# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows one to (re)generate OpenSSL certificates. It implements a notion of provider (ie. C(selfsigned), C(ownca), C(acme), C(assertonly)) for your certificate. The 'assertonly' provider is intended for use cases where one is only interested in checking properties of a supplied certificate. The 'ownca' provider is intended for generate OpenSSL certificate signed with your own CA (Certificate Authority) certificate (self-signed certificate). Many properties that can be specified in this module are for validation of an existing or newly generated certificate. The proper place to specify them, if you want to receive a certificate with these properties is a CSR (Certificate Signing Request). It uses the pyOpenSSL python library to interact with OpenSSL.
      class Openssl_certificate < Base
        # @return [:present, :absent, nil] Whether the certificate should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Remote absolute path where the generated certificate file should be created or is already located.
        attribute :path
        validates :path, presence: true, type: String

        # @return [:selfsigned, :ownca, :assertonly, :acme] Name of the provider to use to generate/retrieve the OpenSSL certificate. The C(assertonly) provider will not generate files and fail if the certificate file is missing.
        attribute :provider
        validates :provider, presence: true, inclusion: {:in=>[:selfsigned, :ownca, :assertonly, :acme], :message=>"%{value} needs to be :selfsigned, :ownca, :assertonly, :acme"}

        # @return [Boolean, nil] Generate the certificate, even if it already exists.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Path to the Certificate Signing Request (CSR) used to generate this certificate. This is not required in C(assertonly) mode.
        attribute :csr_path
        validates :csr_path, type: String

        # @return [String, nil] Path to the private key to use when signing the certificate.
        attribute :privatekey_path
        validates :privatekey_path, type: String

        # @return [Object, nil] The passphrase for the I(privatekey_path).
        attribute :privatekey_passphrase

        # @return [Integer, nil] Version of the C(selfsigned) certificate. Nowadays it should almost always be C(3).
        attribute :selfsigned_version
        validates :selfsigned_version, type: Integer

        # @return [String, nil] Digest algorithm to be used when self-signing the certificate
        attribute :selfsigned_digest
        validates :selfsigned_digest, type: String

        # @return [Object, nil] The timestamp at which the certificate starts being valid. The timestamp is formatted as an ASN.1 TIME. If this value is not specified, certificate will start being valid from now.
        attribute :selfsigned_not_before

        # @return [Object, nil] The timestamp at which the certificate stops being valid. The timestamp is formatted as an ASN.1 TIME. If this value is not specified, certificate will stop being valid 10 years from now.
        attribute :selfsigned_not_after

        # @return [String, nil] Remote absolute path of the CA (Certificate Authority) certificate.
        attribute :ownca_path
        validates :ownca_path, type: String

        # @return [String, nil] Path to the CA (Certificate Authority) private key to use when signing the certificate.
        attribute :ownca_privatekey_path
        validates :ownca_privatekey_path, type: String

        # @return [Object, nil] The passphrase for the I(ownca_privatekey_path).
        attribute :ownca_privatekey_passphrase

        # @return [String, nil] Digest algorithm to be used for the C(ownca) certificate.
        attribute :ownca_digest
        validates :ownca_digest, type: String

        # @return [Integer, nil] Version of the C(ownca) certificate. Nowadays it should almost always be C(3).
        attribute :ownca_version
        validates :ownca_version, type: Integer

        # @return [Object, nil] The timestamp at which the certificate starts being valid. The timestamp is formatted as an ASN.1 TIME. If this value is not specified, certificate will start being valid from now.
        attribute :ownca_not_before

        # @return [Object, nil] The timestamp at which the certificate stops being valid. The timestamp is formatted as an ASN.1 TIME. If this value is not specified, certificate will stop being valid 10 years from now.
        attribute :ownca_not_after

        # @return [String, nil] Path to the accountkey for the C(acme) provider
        attribute :acme_accountkey_path
        validates :acme_accountkey_path, type: String

        # @return [String, nil] Path to the ACME challenge directory that is served on U(http://<HOST>:80/.well-known/acme-challenge/)
        attribute :acme_challenge_path
        validates :acme_challenge_path, type: String

        # @return [Boolean, nil] Include the intermediate certificate to the generated certificate
        attribute :acme_chain
        validates :acme_chain, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] list of algorithms that you would accept the certificate to be signed with (e.g. ['sha256WithRSAEncryption', 'sha512WithRSAEncryption']).
        attribute :signature_algorithms
        validates :signature_algorithms, type: TypeGeneric.new(String)

        # @return [Hash, nil] Key/value pairs that must be present in the issuer name field of the certificate. If you need to specify more than one value with the same key, use a list as value.
        attribute :issuer
        validates :issuer, type: Hash

        # @return [Boolean, nil] If set to True, the I(issuer) field must contain only these values.
        attribute :issuer_strict
        validates :issuer_strict, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Key/value pairs that must be present in the subject name field of the certificate. If you need to specify more than one value with the same key, use a list as value.
        attribute :subject

        # @return [Boolean, nil] If set to True, the I(subject) field must contain only these values.
        attribute :subject_strict
        validates :subject_strict, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Checks if the certificate is expired/not expired at the time the module is executed.
        attribute :has_expired
        validates :has_expired, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Version of the certificate. Nowadays it should almost always be 3.
        attribute :version

        # @return [String, nil] The certificate must be valid at this point in time. The timestamp is formatted as an ASN.1 TIME.
        attribute :valid_at
        validates :valid_at, type: String

        # @return [Object, nil] The certificate must be invalid at this point in time. The timestamp is formatted as an ASN.1 TIME.
        attribute :invalid_at

        # @return [Object, nil] The certificate must start to become valid at this point in time. The timestamp is formatted as an ASN.1 TIME.
        attribute :not_before

        # @return [Object, nil] The certificate must expire at this point in time. The timestamp is formatted as an ASN.1 TIME.
        attribute :not_after

        # @return [Integer, nil] The certificate must still be valid in I(valid_in) seconds from now.
        attribute :valid_in
        validates :valid_in, type: Integer

        # @return [Array<String>, String, nil] The I(key_usage) extension field must contain all these values.
        attribute :key_usage
        validates :key_usage, type: TypeGeneric.new(String)

        # @return [Boolean, nil] If set to True, the I(key_usage) extension field must contain only these values.
        attribute :key_usage_strict
        validates :key_usage_strict, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] The I(extended_key_usage) extension field must contain all these values.
        attribute :extended_key_usage
        validates :extended_key_usage, type: TypeGeneric.new(String)

        # @return [Boolean, nil] If set to True, the I(extended_key_usage) extension field must contain only these values.
        attribute :extended_key_usage_strict
        validates :extended_key_usage_strict, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] The I(subject_alt_name) extension field must contain these values.
        attribute :subject_alt_name
        validates :subject_alt_name, type: TypeGeneric.new(String)

        # @return [Boolean, nil] If set to True, the I(subject_alt_name) extension field must contain only these values.
        attribute :subject_alt_name_strict
        validates :subject_alt_name_strict, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
