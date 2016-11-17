# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module affects the configuration files located in the interfaces folder defined by ifupdown2. Interfaces port and port ranges listed in the "allowed" parameter define what interfaces will be available on the switch. If the user runs this module and has an interface configured on the switch, but not found in the "allowed" list, this interface will be unconfigured. By default this is `/etc/network/interface.d` For more details go the Configuring Interfaces at U(http://docs.cumulusnetworks.com).
      class Cl_interface_policy < Base
        # @return [Array<String>, String] List of ports to run initial run at 10G.
        attribute :allowed
        validates :allowed, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] Directory to store interface files.
        attribute :location
        validates :location, type: String
      end
    end
  end
end
