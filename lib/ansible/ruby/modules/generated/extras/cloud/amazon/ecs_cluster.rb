# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ecs_cluster < Base
        # @return [String] The desired state of the cluster
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :has_instances], :message=>"%{value} needs to be :present, :absent, :has_instances"}

        # @return [String] The cluster name
        attribute :name
        validates :name, presence: true, type: String

        # @return [Fixnum] Number of seconds to wait
        attribute :delay
        validates :delay, type: Fixnum

        # @return [Fixnum] The number of times to wait for the cluster to have an instance
        attribute :repeat
        validates :repeat, type: Fixnum
      end
    end
  end
end
