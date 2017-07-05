# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set the initial port attribute defined in the Cumulus Linux ports.conf, file. This module does not do any error checking at the moment. Be careful to not include ports that do not exist on the switch. Carefully read the original ports.conf file for any exceptions or limitations. For more details go the Configure Switch Port Attribute Documentation at U(http://docs.cumulusnetworks.com).
      class Cl_ports < Base
        # @return [Object, nil] List of ports to run initial run at 10G.
        attribute :speed_10g

        # @return [Array<String>, String, nil] List of ports to run initial run at 40G.
        attribute :speed_40g
        validates :speed_40g, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of 40G ports that will be unganged to run as 4 10G ports.
        attribute :speed_4_by_10g
        validates :speed_4_by_10g, type: TypeGeneric.new(String)

        # @return [Object, nil] List of 10G ports that will be ganged to form a 40G port.
        attribute :speed_40g_div_4
      end
    end
  end
end
