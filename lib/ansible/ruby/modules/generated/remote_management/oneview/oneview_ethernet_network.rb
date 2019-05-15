# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides an interface to manage Ethernet Network resources. Can create, update, or delete.
      class Oneview_ethernet_network < Base
        # @return [:present, :absent, :default_bandwidth_reset, nil] Indicates the desired state for the Ethernet Network resource. - C(present) will ensure data properties are compliant with OneView. - C(absent) will remove the resource from OneView, if it exists. - C(default_bandwidth_reset) will reset the network connection template to the default.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :default_bandwidth_reset], :message=>"%{value} needs to be :present, :absent, :default_bandwidth_reset"}, allow_nil: true

        # @return [Hash] List with Ethernet Network properties.
        attribute :data
        validates :data, presence: true, type: Hash
      end
    end
  end
end
