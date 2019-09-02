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

        # @return [:yes, :no, nil] Is the service enabled
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The type of service
        attribute :service_type
        validates :service_type, presence: true, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatibility
        attribute :availability_zone
      end
    end
  end
end
