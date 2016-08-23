# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Apt_key < Base
        # @return [String] identifier of key. Including this allows check mode to correctly report the changed state.
        attribute :id
        validates :id, type: String

        # @return [String] keyfile contents
        attribute :data
        validates :data, type: String

        # @return [String] keyfile path
        attribute :file
        validates :file, type: String

        # @return [String] path to specific keyring file in /etc/apt/trusted.gpg.d
        attribute :keyring
        validates :keyring, type: String

        # @return [String] url to retrieve key from.
        attribute :url
        validates :url, type: String

        # @return [String] keyserver to retrieve key from.
        attribute :keyserver
        validates :keyserver, type: String

        # @return [:absent, :present, nil] used to specify if key is being added or revoked
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target url will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
