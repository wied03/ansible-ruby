# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can manage a pacemaker cluster and nodes from Ansible using the pacemaker cli.
      class Pacemaker_cluster < Base
        # @return [:cleanup, :offline, :online, :restart] Indicate desired state of the cluster
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:cleanup, :offline, :online, :restart], :message=>"%{value} needs to be :cleanup, :offline, :online, :restart"}

        # @return [Object, nil] Specify which node of the cluster you want to manage. None == the cluster status itself, 'all' == check the status of all nodes.
        attribute :node

        # @return [Integer, nil] Timeout when the module should considered that the action has failed
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] Force the change of the cluster state
        attribute :force
        validates :force, type: String
      end
    end
  end
end
