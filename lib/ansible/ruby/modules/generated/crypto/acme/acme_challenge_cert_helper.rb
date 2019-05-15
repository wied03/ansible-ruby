# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Prepares certificates for ACME challenges such as C(tls-alpn-01).
      # The raw data is provided by the M(acme_certificate) module, and needs to be converted to a certificate to be used for challenge validation. This module provides a simple way to generate the required certificates.
      # The C(tls-alpn-01) implementation is based on L(the draft-05 version of the specification,https://tools.ietf.org/html/draft-ietf-acme-tls-alpn-05).
      class Acme_challenge_cert_helper < Base
        # @return [:"tls-alpn-01"] The challenge type.
        attribute :challenge
        validates :challenge, presence: true, inclusion: {:in=>[:"tls-alpn-01"], :message=>"%{value} needs to be :\"tls-alpn-01\""}

        # @return [String] The C(challenge_data) entry provided by M(acme_certificate) for the challenge.
        attribute :challenge_data
        validates :challenge_data, presence: true, type: String

        # @return [String, nil] Path to a file containing the private key file to use for this challenge certificate.,Mutually exclusive with C(private_key_content).
        attribute :private_key_src
        validates :private_key_src, type: String

        # @return [Object, nil] Content of the private key to use for this challenge certificate.,Mutually exclusive with C(private_key_src).
        attribute :private_key_content
      end
    end
  end
end
