# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Delete cinder block storage volume snapshots
      class Os_volume_snapshot < Base
        # @return [Object] Name of the snapshot
        attribute :display_name
        validates :display_name, presence: true

        # @return [Object, nil] String describing the snapshot
        attribute :display_description

        # @return [Object] The volume name or id to create/delete the snapshot
        attribute :volume
        validates :volume, presence: true

        # @return [Symbol, nil] Allows or disallows snapshot of a volume to be created when the volume is attached to an instance.
        attribute :force
        validates :force, type: Symbol

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Availability zone in which to create the snapshot.
        attribute :availability_zone
      end
    end
  end
end
