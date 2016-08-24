# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cl_interface_policy < Base
        # @return [Array<String>, String, nil] list of ports to run initial run at 10G
        attribute :allowed, flat_array: true
        validates :allowed, type: TypeGeneric.new(String)

        # @return [String, nil] folder to store interface files.
        attribute :location
        validates :location, type: String
      end
    end
  end
end
