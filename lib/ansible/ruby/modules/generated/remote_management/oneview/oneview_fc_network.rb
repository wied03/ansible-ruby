# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Provides an interface to manage Fibre Channel Network resources. Can create, update, and delete.
      class Oneview_fc_network < Base
        # @return [:present, :absent, nil] Indicates the desired state for the Fibre Channel Network resource. C(present) will ensure data properties are compliant with OneView. C(absent) will remove the resource from OneView, if it exists.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Hash] List with the Fibre Channel Network properties.
        attribute :data
        validates :data, presence: true, type: Hash
      end
    end
  end
end
