# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete a managed Azure Container Service (AKS) Instance.
      class Azure_rm_aks < Base
        # @return [String] Name of a resource group where the managed Azure Container Services (AKS) exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the managed Azure Container Services (AKS) instance.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the AKS. Use C(present) to create or update an AKS and C(absent) to delete it.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [String, nil] DNS prefix specified when creating the managed cluster.
        attribute :dns_prefix
        validates :dns_prefix, type: String

        # @return [Object, nil] Version of Kubernetes specified when creating the managed cluster.
        attribute :kubernetes_version

        # @return [Hash, nil] The linux profile suboptions.
        attribute :linux_profile
        validates :linux_profile, type: Hash

        # @return [Array<Hash>, Hash, nil] The agent pool profile suboptions.
        attribute :agent_pool_profiles
        validates :agent_pool_profiles, type: TypeGeneric.new(Hash)

        # @return [Hash, nil] The service principal suboptions.
        attribute :service_principal
        validates :service_principal, type: Hash
      end
    end
  end
end
