# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete an Azure Container Registry.
      class Azure_rm_containerregistry < Base
        # @return [String] Name of a resource group where the Container Registry exists or will be created.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] Name of the Container Registry.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Assert the state of the container registry. Use 'present' to create or update an container registry and 'absent' to delete it.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location
        validates :location, type: String

        # @return [Symbol, nil] If enabled, you can use the registry name as username and admin user access key as password to docker login to your container registry.
        attribute :admin_user_enabled
        validates :admin_user_enabled, type: Symbol

        # @return [:Basic, :Standard, :Premium, nil] Specifies the SKU to use. Currently can be either Basic, Standard or Premium.
        attribute :sku
        validates :sku, inclusion: {:in=>[:Basic, :Standard, :Premium], :message=>"%{value} needs to be :Basic, :Standard, :Premium"}, allow_nil: true
      end
    end
  end
end
