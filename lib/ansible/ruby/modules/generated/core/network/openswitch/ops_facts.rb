# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ops_facts < Base
        # @return [Boolean, nil] When enabled, this argument will collect the current running configuration from the remote device.  If the transport is C(rest) then the collected configuration will be the full system configuration.
        attribute :config
        validates :config, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] Accepts a list of endpoints to retrieve from the remote device using the REST API.  The endpoints should be valid endpoints availble on the device.  This argument is only valid when the transport is C(rest).
        attribute :endpoints
        validates :endpoints, type: TypeGeneric.new(String)
      end
    end
  end
end
