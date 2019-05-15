# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The manageiq_policies module supports adding and deleting policy_profiles in ManageIQ.
      class Manageiq_policies < Base
        # @return [:absent, :present, :list, nil] absent - policy_profiles should not exist,,present - policy_profiles should exist,,list - list current policy_profiles and policies.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :list], :message=>"%{value} needs to be :absent, :present, :list"}, allow_nil: true

        # @return [Array<Hash>, Hash, nil] list of dictionaries, each includes the policy_profile 'name' key.,required if state is present or absent.
        attribute :policy_profiles
        validates :policy_profiles, type: TypeGeneric.new(Hash)

        # @return [:provider, :host, :vm, :blueprint, :category, :cluster, :"data store", :group, :"resource pool", :service, :"service template", :template, :tenant, :user] the type of the resource to which the profile should be [un]assigned
        attribute :resource_type
        validates :resource_type, presence: true, inclusion: {:in=>[:provider, :host, :vm, :blueprint, :category, :cluster, :"data store", :group, :"resource pool", :service, :"service template", :template, :tenant, :user], :message=>"%{value} needs to be :provider, :host, :vm, :blueprint, :category, :cluster, :\"data store\", :group, :\"resource pool\", :service, :\"service template\", :template, :tenant, :user"}

        # @return [String] the name of the resource to which the profile should be [un]assigned
        attribute :resource_name
        validates :resource_name, presence: true, type: String
      end
    end
  end
end
