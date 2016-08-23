# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_sshkeypair < Base
        # @return [String] Name of public key.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] Domain the public key is related to.
        attribute :domain

        # @return [Object] Account the public key is related to.
        attribute :account

        # @return [Object] Name of the project the public key to be registered in.
        attribute :project

        # @return [:present, :absent, nil] State of the public key.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] String of the public key.
        attribute :public_key
        validates :public_key, type: String
      end
    end
  end
end
