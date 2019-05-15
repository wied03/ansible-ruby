# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends an arbitrary netconf command on HUAWEI CloudEngine switches.
      class Ce_netconf < Base
        # @return [:get, :"edit-config", :"execute-action", :"execute-cli"] The type of rpc.
        attribute :rpc
        validates :rpc, presence: true, inclusion: {:in=>[:get, :"edit-config", :"execute-action", :"execute-cli"], :message=>"%{value} needs to be :get, :\"edit-config\", :\"execute-action\", :\"execute-cli\""}

        # @return [Object] The config xml string.
        attribute :cfg_xml
        validates :cfg_xml, presence: true
      end
    end
  end
end
