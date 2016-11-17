# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages F5 BIG-IP GTM virtual servers
      class Bigip_gtm_virtual_server < Base
        # @return [:present, :absent, :enabled, :disabled, nil] Virtual server state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true

        # @return [String] Virtual server name
        attribute :virtual_server_name
        validates :virtual_server_name, presence: true, type: String

        # @return [String] Virtual server server
        attribute :virtual_server_server
        validates :virtual_server_server, presence: true, type: String

        # @return [Object, nil] Virtual server host
        attribute :host

        # @return [Object, nil] Virtual server port
        attribute :port
      end
    end
  end
end
