# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Iam_cert < Base
        # @return [String] Name of certificate to add, update or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] When present, this will update the name of the cert with the value passed here.
        attribute :new_name

        # @return [Object, nil] When present, this will update the path of the cert with the value passed here.
        attribute :new_path

        # @return [:present, :absent] Whether to create, delete certificate. When present is specified it will attempt to make an update if new_path or new_name is specified.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] When creating or updating, specify the desired path of the certificate
        attribute :path
        validates :path, type: String

        # @return [String, nil] The path to the CA certificate chain in PEM encoded format.
        attribute :cert_chain
        validates :cert_chain, type: String

        # @return [String, nil] The path to the certificate body in PEM encoded format.
        attribute :cert
        validates :cert, type: String

        # @return [String, nil] The path to the private key of the certificate in PEM encoded format.
        attribute :key
        validates :key, type: String

        # @return [Boolean, nil] By default the module will not upload a certificate that is already uploaded into AWS. If set to True, it will upload the certificate as long as the name is unique.
        attribute :dup_ok
        validates :dup_ok, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] AWS secret key. If not set then the value of the AWS_SECRET_KEY environment variable is used.
        attribute :aws_secret_key

        # @return [Object, nil] AWS access key. If not set then the value of the AWS_ACCESS_KEY environment variable is used.
        attribute :aws_access_key
      end
    end
  end
end
