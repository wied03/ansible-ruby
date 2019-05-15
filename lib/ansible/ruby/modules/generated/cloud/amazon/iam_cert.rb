# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for the management of server certificates
      class Iam_cert < Base
        # @return [String] Name of certificate to add, update or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] When state is present, this will update the name of the cert.,The cert, key and cert_chain parameters will be ignored if this is defined.
        attribute :new_name
        validates :new_name, type: String

        # @return [Object, nil] When state is present, this will update the path of the cert.,The cert, key and cert_chain parameters will be ignored if this is defined.
        attribute :new_path

        # @return [:present, :absent] Whether to create(or update) or delete certificate.,If new_path or new_name is defined, specifying present will attempt to make an update these.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] When creating or updating, specify the desired path of the certificate.
        attribute :path
        validates :path, type: String

        # @return [String, nil] The path to, or content of the CA certificate chain in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.
        attribute :cert_chain
        validates :cert_chain, type: String

        # @return [String, nil] The path to, or content of the certificate body in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.
        attribute :cert
        validates :cert, type: String

        # @return [String, nil] The path to, or content of the private key in PEM encoded format. As of 2.4 content is accepted. If the parameter is not a file, it is assumed to be content.
        attribute :key
        validates :key, type: String

        # @return [Boolean, nil] By default the module will not upload a certificate that is already uploaded into AWS. If set to True, it will upload the certificate as long as the name is unique.
        attribute :dup_ok
        validates :dup_ok, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
