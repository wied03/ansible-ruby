# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cl_ports < Base
        # @return [Object] list of ports to run initial run at 10G
        attribute :speed_10g

        # @return [Object] list of ports to run initial run at 40G
        attribute :speed_40g

        # @return [Object] list of 40G ports that will be unganged to run as 4 10G ports.
        attribute :speed_4_by_10g

        # @return [Object] list of 10G ports that will be ganged to form a 40G port
        attribute :speed_40g_div_4
      end
    end
  end
end
