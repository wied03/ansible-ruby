# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Remove cinder block storage volumes
      class Os_volume < Base
        # @return [Object, nil] Size of volume in GB. This parameter is required when the I(state) parameter is 'present'.
        attribute :size

        # @return [Object] Name of volume
        attribute :display_name
        validates :display_name, presence: true

        # @return [Object, nil] String describing the volume
        attribute :display_description

        # @return [Object, nil] Volume type for volume
        attribute :volume_type

        # @return [Object, nil] Image name or id for boot from volume
        attribute :image

        # @return [Object, nil] Volume snapshot id to create from
        attribute :snapshot_id

        # @return [Object, nil] Volume name or id to create from
        attribute :volume

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Ignored. Present for backwards compatability
        attribute :availability_zone
      end
    end
  end
end
