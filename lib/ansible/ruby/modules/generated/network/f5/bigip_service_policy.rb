# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Service policies allow you to configure timers and port misuse rules, if enabled, on a per rule or per context basis.
      class Bigip_service_policy < Base
        # @return [String] Name of the service policy.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Description of the service policy.
        attribute :description

        # @return [String, nil] The timer policy to attach to the service policy.
        attribute :timer_policy
        validates :timer_policy, type: String

        # @return [String, nil] The port misuse policy to attach to the service policy.,Requires that C(afm) be provisioned to use. If C(afm) is not provisioned, this parameter will be ignored.
        attribute :port_misuse_policy
        validates :port_misuse_policy, type: String

        # @return [:present, :absent, nil] Whether the resource should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String
      end
    end
  end
end
