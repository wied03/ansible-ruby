# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete volume pair
      class Na_elementsw_volume_pair < Base
        # @return [:present, :absent, nil] Whether the specified volume pair should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, Integer] Source volume name or volume ID
        attribute :src_volume
        validates :src_volume, presence: true, type: MultipleTypes.new(String, Integer)

        # @return [String, Integer] Source account name or ID
        attribute :src_account
        validates :src_account, presence: true, type: MultipleTypes.new(String, Integer)

        # @return [String, Integer] Destination volume name or volume ID
        attribute :dest_volume
        validates :dest_volume, presence: true, type: MultipleTypes.new(String, Integer)

        # @return [String, Integer] Destination account name or ID
        attribute :dest_account
        validates :dest_account, presence: true, type: MultipleTypes.new(String, Integer)

        # @return [:async, :sync, :snapshotsonly, nil] Mode to start the volume pairing
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:async, :sync, :snapshotsonly], :message=>"%{value} needs to be :async, :sync, :snapshotsonly"}, allow_nil: true

        # @return [String] Destination IP address of the paired cluster.
        attribute :dest_mvip
        validates :dest_mvip, presence: true, type: String

        # @return [String, nil] Destination username for the paired cluster,Optional if this is same as source cluster username.
        attribute :dest_username
        validates :dest_username, type: String

        # @return [String, nil] Destination password for the paired cluster,Optional if this is same as source cluster password.
        attribute :dest_password
        validates :dest_password, type: String
      end
    end
  end
end
