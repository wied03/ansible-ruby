# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or terminates ecs clusters.
      class Ecs_cluster < Base
        # @return [:present, :absent, :has_instances] The desired state of the cluster
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :has_instances], :message=>"%{value} needs to be :present, :absent, :has_instances"}

        # @return [String] The cluster name
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Number of seconds to wait
        attribute :delay
        validates :delay, type: Integer

        # @return [Integer, nil] The number of times to wait for the cluster to have an instance
        attribute :repeat
        validates :repeat, type: Integer
      end
    end
  end
end
