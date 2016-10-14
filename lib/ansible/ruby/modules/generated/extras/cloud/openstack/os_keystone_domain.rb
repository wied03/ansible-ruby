# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or delete OpenStack Identity domains. If a domain with the supplied name already exists, it will be updated with the new description and enabled attributes.
      class Os_keystone_domain < Base
        # @return [String] Name that has to be given to the instance
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the domain
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Is the domain enabled
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
