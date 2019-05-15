# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete an Azure Container Service Instance.
      class Azure_rm_acs < Base
        # @return [String] Name of a resource group where the Container Services exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the Container Services instance.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the ACS. Use 'present' to create or update an ACS and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [:DCOS, :Kubernetes, :Swarm] Specifies the Container Orchestration Platform to use. Currently can be either DCOS, Kubernetes or Swarm.
        attribute :orchestration_platform
        validates :orchestration_platform, presence: true, inclusion: {:in=>[:DCOS, :Kubernetes, :Swarm], :message=>"%{value} needs to be :DCOS, :Kubernetes, :Swarm"}

        # @return [Array<Hash>, Hash] Master profile suboptions.
        attribute :master_profile
        validates :master_profile, presence: true, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash] The linux profile suboptions.
        attribute :linux_profile
        validates :linux_profile, presence: true, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash] The agent pool profile suboptions.
        attribute :agent_pool_profiles
        validates :agent_pool_profiles, presence: true, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] The service principal suboptions.
        attribute :service_principal
        validates :service_principal, type: TypeGeneric.new(Hash)

        # @return [Boolean] Should VM Diagnostics be enabled for the Container Service VM's.
        attribute :diagnostics_profile
        validates :diagnostics_profile, presence: true, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}
      end
    end
  end
end
