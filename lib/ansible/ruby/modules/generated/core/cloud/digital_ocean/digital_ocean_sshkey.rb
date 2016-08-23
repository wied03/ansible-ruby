# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Digital_ocean_sshkey < Base
        # @return [String] Indicate desired state of the target.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] DigitalOcean manager id.
        attribute :client_id
        validates :client_id, type: String

        # @return [String] DigitalOcean api key.
        attribute :api_key
        validates :api_key, type: String

        # @return [Object] Numeric, the SSH key id you want to operate on.
        attribute :id

        # @return [String] String, this is the name of an SSH key to create or destroy.
        attribute :name
        validates :name, type: String

        # @return [String] The public SSH key you want to add to your account.
        attribute :ssh_pub_key
        validates :ssh_pub_key, type: String
      end
    end
  end
end
