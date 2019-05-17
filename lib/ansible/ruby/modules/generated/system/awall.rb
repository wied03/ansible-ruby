# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This modules allows for enable/disable/activate of I(awall) policies. Alpine Wall (I(awall)) generates a firewall configuration from the enabled policy files and activates the configuration on the system.
      class Awall < Base
        # @return [Array<String>, String, nil] A policy name, like C(foo), or multiple policies, like C(foo, bar).
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [:enabled, :disabled, nil] The policy(ies) will be C(enabled),The policy(ies) will be C(disabled)
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:yes, :no, nil] Activate the new firewall rules. Can be run with other steps or on it's own.
        attribute :activate
        validates :activate, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
