# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_keypair < Base
        # @return [String] Name that has to be given to the key pair
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The public key that would be uploaded to nova and injected into VMs upon creation.
        attribute :public_key
        validates :public_key, type: String

        # @return [String] Path to local file containing ssh public key. Mutually exclusive with public_key.
        attribute :public_key_file
        validates :public_key_file, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
