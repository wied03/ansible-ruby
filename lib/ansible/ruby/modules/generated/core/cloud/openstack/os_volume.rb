# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_volume < Base
        # @return [String, nil] Size of volume in GB. This parameter is required when the I(state) parameter is 'present'.
        attribute :size
        validates :size, type: String

        # @return [Object] Name of volume
        attribute :display_name
        validates :display_name, presence: true

        # @return [String, nil] String describing the volume
        attribute :display_description
        validates :display_description, type: String

        # @return [String, nil] Volume type for volume
        attribute :volume_type
        validates :volume_type, type: String

        # @return [String, nil] Image name or id for boot from volume
        attribute :image
        validates :image, type: String

        # @return [String, nil] Volume snapshot id to create from
        attribute :snapshot_id
        validates :snapshot_id, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
