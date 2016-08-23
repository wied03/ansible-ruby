# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_keystone_domain < Base
        # @return [String] Name that has to be given to the instance
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the domain
        attribute :description
        validates :description, type: String

        # @return [TrueClass, nil] Is the domain enabled
        attribute :enabled
        validates :enabled, type: TrueClass

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
