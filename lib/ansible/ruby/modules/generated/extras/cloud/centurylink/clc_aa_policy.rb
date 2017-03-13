# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An Ansible module to Create or Delete Anti Affinity Policies at CenturyLink Cloud.
      class Clc_aa_policy < Base
        # @return [String] The name of the Anti Affinity Policy.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] Datacenter in which the policy lives/should live.
        attribute :location
        validates :location, presence: true

        # @return [:present, :absent, nil] Whether to create or delete the policy.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Whether to wait for the tasks to finish before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
