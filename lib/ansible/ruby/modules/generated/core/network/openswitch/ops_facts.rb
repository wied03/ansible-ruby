# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collects facts from devices running the OpenSwitch operating system.  Fact collection is supported over both Cli and Rest transports.  This module prepends all of the base network fact keys with C(ansible_net_<fact>).  The facts module will always collect a base set of facts from the device and can enable or disable collection of additional facts.
      # The facts collected from pre Ansible 2.2 are still available and are collected for backwards compatibility; however, these facts should be considered deprecated and will be removed in a future release.
      class Ops_facts < Base
        # @return [Boolean, nil] When enabled, this argument will collect the current running configuration from the remote device.  If the C(transport=rest) then the collected configuration will be the full system configuration.
        attribute :config
        validates :config, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<String>, String, nil] Accepts a list of endpoints to retrieve from the remote device using the REST API.  The endpoints should be valid endpoints available on the device.  This argument is only valid when the C(transport=rest).
        attribute :endpoints
        validates :endpoints, type: TypeGeneric.new(String)

        # @return [String, nil] When supplied, this argument will restrict the facts collected to a given subset.  Possible values for this argument include all, hardware, config, legacy, and interfaces.  Can specify a list of values to include a larger subset.  Values can also be used with an initial C(M(!)) to specify that a specific subset should not be collected.
        attribute :gather_subset
        validates :gather_subset, type: String
      end
    end
  end
end
