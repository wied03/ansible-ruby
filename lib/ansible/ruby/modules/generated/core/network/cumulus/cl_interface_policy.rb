# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cl_interface_policy < Base
        # @return [Object] list of ports to run initial run at 10G
        attribute :allowed

        # @return [String] folder to store interface files.
        attribute :location
        validates :location, type: String
      end
    end
  end
end
