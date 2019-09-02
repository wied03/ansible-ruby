# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete an autoscale setting.
      class Azure_rm_autoscale < Base
        # @return [String, nil] The identifier of the resource to apply autoscale setting.,It could be the resource id string.,It also could be a dict contains the C(name), C(subscription_id), C(namespace), C(types), C(resource_group) of the resource.
        attribute :target
        validates :target, type: String

        # @return [String] resource group of the resource.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [Boolean, nil] Specifies whether automatic scaling is enabled for the resource.
        attribute :enabled
        validates :enabled, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] The collection of automatic scaling profiles that specify different scaling parameters for different time periods.,A maximum of 20 profiles can be specified.
        attribute :profiles
        validates :profiles, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] the collection of notifications.
        attribute :notifications
        validates :notifications, type: TypeGeneric.new(Hash)

        # @return [:present, :absent, nil] Assert the state of the virtual network. Use 'present' to create or update and 'absent' to delete.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] location of the resource.
        attribute :location

        # @return [String] name of the resource.
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
