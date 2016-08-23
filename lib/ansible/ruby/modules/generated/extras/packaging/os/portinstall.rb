# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Portinstall < Base
        # @return [Array<String>] name of package to install/remove
        attribute :name, flat_array: true
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [String] state of the package
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [TrueClass] use packages instead of ports whenever available
        attribute :use_packages
        validates :use_packages, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
