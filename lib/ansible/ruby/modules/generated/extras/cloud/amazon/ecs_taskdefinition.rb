# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ecs_taskdefinition < Base
        # @return [String] State whether the task definition should exist or be deleted
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object] The arn of the task description to delete
        attribute :arn

        # @return [String] A Name that would be given to the task definition
        attribute :family
        validates :family, type: String

        # @return [Object] A revision number for the task definition
        attribute :revision

        # @return [Array] A list of containers definitions
        attribute :containers
        validates :containers, type: Array

        # @return [Array] A list of names of volumes to be attached
        attribute :volumes
        validates :volumes, type: Array
      end
    end
  end
end
