# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pear < Base
        # @return [Array<String>] Name of the package to install, upgrade, or remove.
        attribute :name, flat_array: true
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [String] Desired state of the package.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true
      end
    end
  end
end
