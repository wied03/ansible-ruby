# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can manage a pacemaker cluster and nodes from Ansible using the pacemaker cli.
      class Pacemaker_cluster < Base
        # @return [:online, :offline, :restart, :cleanup] Indicate desired state of the cluster
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:online, :offline, :restart, :cleanup], :message=>"%{value} needs to be :online, :offline, :restart, :cleanup"}

        # @return [Object, nil] Specify which node of the cluster you want to manage. None == the cluster status itself, 'all' == check the status of all nodes.
        attribute :node

        # @return [Integer, nil] Timeout when the module should considered that the action has failed
        attribute :timeout
        validates :timeout, type: Integer

        # @return [Boolean, nil] Force the change of the cluster state
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
