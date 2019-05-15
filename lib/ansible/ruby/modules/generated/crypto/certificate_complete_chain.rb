# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module completes a given chain of certificates in PEM format by finding intermediate certificates from a given set of certificates, until it finds a root certificate in another given set of certificates.
      # This can for example be used to find the root certificate for a certificate chain returned by M(acme_certificate).
      # Note that this module does I(not) check for validity of the chains. It only checks that issuer and subject match, and that the signature is correct. It ignores validity dates and key usage completely. If you need to verify that a generated chain is valid, please use C(openssl verify ...).
      class Certificate_complete_chain < Base
        # @return [String] A concatenated set of certificates in PEM format forming a chain.,The module will try to complete this chain.
        attribute :input_chain
        validates :input_chain, presence: true, type: String

        # @return [Array<String>, String] A list of filenames or directories.,A filename is assumed to point to a file containing one or more certificates in PEM format. All certificates in this file will be added to the set of root certificates.,If a directory name is given, all files in the directory and its subdirectories will be scanned and tried to be parsed as concatenated certificates in PEM format.,Symbolic links will be followed.
        attribute :root_certificates
        validates :root_certificates, presence: true, type: TypeGeneric.new(String)

        # @return [Object, nil] A list of filenames or directories.,A filename is assumed to point to a file containing one or more certificates in PEM format. All certificates in this file will be added to the set of root certificates.,If a directory name is given, all files in the directory and its subdirectories will be scanned and tried to be parsed as concatenated certificates in PEM format.,Symbolic links will be followed.
        attribute :intermediate_certificates
      end
    end
  end
end
