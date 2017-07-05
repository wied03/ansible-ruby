# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or delete OpenStack Identity service. If a service with the supplied name already exists, it will be updated with the new description and enabled attributes.
      class Os_keystone_service < Base
        # @return [String] Name of the service
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the service
        attribute :description
        validates :description, type: String

        # @return [Boolean, nil] Is the service enabled
        attribute :enabled
        validates :enabled, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The type of service
        attribute :service_type
        validates :service_type, presence: true, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatability
        attribute :availability_zone
      end
    end
  end
end
