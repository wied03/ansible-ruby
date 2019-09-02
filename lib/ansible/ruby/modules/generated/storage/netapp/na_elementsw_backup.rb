# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create backup
      class Na_elementsw_backup < Base
        # @return [Object] hostname for the backup source cluster
        attribute :src_hostname
        validates :src_hostname, presence: true

        # @return [Object] username for the backup source cluster
        attribute :src_username
        validates :src_username, presence: true

        # @return [Object] password for the backup source cluster
        attribute :src_password
        validates :src_password, presence: true

        # @return [Object] ID of the backup source volume.
        attribute :src_volume_id
        validates :src_volume_id, presence: true

        # @return [Object, nil] hostname for the backup source cluster,will be set equal to src_hostname if not specified
        attribute :dest_hostname

        # @return [Object, nil] username for the backup destination cluster,will be set equal to src_username if not specified
        attribute :dest_username

        # @return [Object, nil] password for the backup destination cluster,will be set equal to src_password if not specified
        attribute :dest_password

        # @return [Object] ID of the backup destination volume
        attribute :dest_volume_id
        validates :dest_volume_id, presence: true

        # @return [:native, :uncompressed, nil] Backup format to use
        attribute :format
        validates :format, expression_inclusion: {:in=>[:native, :uncompressed], :message=>"%{value} needs to be :native, :uncompressed"}, allow_nil: true

        # @return [Object, nil] the backup script to be executed
        attribute :script

        # @return [Object, nil] the backup script parameters
        attribute :script_parameters
      end
    end
  end
end
