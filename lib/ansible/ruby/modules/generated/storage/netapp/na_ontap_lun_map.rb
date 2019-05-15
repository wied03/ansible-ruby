# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Map and unmap LUNs on NetApp ONTAP.
      class Na_ontap_lun_map < Base
        # @return [:present, :absent, nil] Whether the specified LUN should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Initiator group to map to the given LUN.
        attribute :initiator_group_name
        validates :initiator_group_name, presence: true, type: String

        # @return [String] Path of the LUN..
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [Object, nil] LUN ID assigned for the map.
        attribute :lun_id
      end
    end
  end
end
