# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create (reserve) or Destroy (release) Regional or Global IP Addresses. See U(https://cloud.google.com/compute/docs/configure-instance-ip-addresses#reserve_new_static) for more on reserving static addresses.
      class Gce_eip < Base
        # @return [Object] Name of Address.
        attribute :name
        validates :name, presence: true

        # @return [Object] Region to create the address in. Set to 'global' to create a global address.
        attribute :region
        validates :region, presence: true

        # @return [:present, :absent, nil] The state the address should be in. C(present) or C(absent) are the only valid options.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
