# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Clc_modify_server < Base
        # @return [Array<String>] A list of server Ids to modify.
        attribute :server_ids
        validates :server_ids, presence: true, type: TypeGeneric.new(String)

        # @return [Integer, nil] How many CPUs to update on the server
        attribute :cpu
        validates :cpu, type: Integer

        # @return [Integer, nil] Memory (in GB) to set to the server.
        attribute :memory
        validates :memory, type: Integer

        # @return [Object, nil] The anti affinity policy id to be set for a hyper scale server. This is mutually exclusive with 'anti_affinity_policy_name'
        attribute :anti_affinity_policy_id

        # @return [String, nil] The anti affinity policy name to be set for a hyper scale server. This is mutually exclusive with 'anti_affinity_policy_id'
        attribute :anti_affinity_policy_name
        validates :anti_affinity_policy_name, type: String

        # @return [Object, nil] The alert policy id to be associated to the server. This is mutually exclusive with 'alert_policy_name'
        attribute :alert_policy_id

        # @return [String, nil] The alert policy name to be associated to the server. This is mutually exclusive with 'alert_policy_id'
        attribute :alert_policy_name
        validates :alert_policy_name, type: String

        # @return [:present, :absent, nil] The state to insure that the provided resources are in.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Whether to wait for the provisioning tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
