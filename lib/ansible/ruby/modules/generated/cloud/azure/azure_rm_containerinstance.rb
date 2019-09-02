# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and delete an Azure Container Instance.
      class Azure_rm_containerinstance < Base
        # @return [String] Name of resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String] The name of the container group.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:linux, :windows, nil] The OS type of containers.
        attribute :os_type
        validates :os_type, expression_inclusion: {:in=>[:linux, :windows], :message=>"%{value} needs to be :linux, :windows"}, allow_nil: true

        # @return [:absent, :present, nil] Assert the state of the container instance. Use 'present' to create or update an container instance and 'absent' to delete it.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:public, :none, nil] The IP address type of the container group (default is 'none')
        attribute :ip_address
        validates :ip_address, expression_inclusion: {:in=>[:public, :none], :message=>"%{value} needs to be :public, :none"}, allow_nil: true

        # @return [Array<Integer>, Integer, nil] List of ports exposed within the container group.
        attribute :ports
        validates :ports, type: TypeGeneric.new(Integer)

        # @return [Object, nil] Valid azure location. Defaults to location of the resource group.
        attribute :location

        # @return [Object, nil] The container image registry login server.
        attribute :registry_login_server

        # @return [Object, nil] The username to log in container image registry server.
        attribute :registry_username

        # @return [Object, nil] The password to log in container image registry server.
        attribute :registry_password

        # @return [Array<Hash>, Hash, nil] List of containers.
        attribute :containers
        validates :containers, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] Force update of existing container instance. Any update will result in deletion and recreation of existing containers.
        attribute :force_update
        validates :force_update, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
