# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create and remove network ACLs.
      class Cs_network_acl < Base
        # @return [String] Name of the network ACL.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description of the network ACL.,If not set, identical to C(name).
        attribute :description
        validates :description, type: String

        # @return [String] VPC the network ACL is related to.
        attribute :vpc
        validates :vpc, presence: true, type: String

        # @return [:present, :absent, nil] State of the network ACL.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Domain the network ACL rule is related to.
        attribute :domain

        # @return [Object, nil] Account the network ACL rule is related to.
        attribute :account

        # @return [Object, nil] Name of the project the network ACL is related to.
        attribute :project

        # @return [Object, nil] Name of the zone the VPC is related to.,If not set, default zone is used.
        attribute :zone

        # @return [:yes, :no, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
