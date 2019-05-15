# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create NetApp ONTAP volume clones.
      # A FlexClone License is required to use this module
      class Na_ontap_volume_clone < Base
        # @return [:present, nil] Whether volume clone should be created.
        attribute :state
        validates :state, inclusion: {:in=>[:present], :message=>"%{value} needs to be :present"}, allow_nil: true

        # @return [String] The parent volume of the volume clone being created.
        attribute :parent_volume
        validates :parent_volume, presence: true, type: String

        # @return [String] The name of the volume clone being created.
        attribute :volume
        validates :volume, presence: true, type: String

        # @return [String] Vserver in which the volume clone should be created.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [String, nil] Parent snapshot in which volume clone is created off.
        attribute :parent_snapshot
        validates :parent_snapshot, type: String

        # @return [Object, nil] Vserver of parent volume in which clone is created off.
        attribute :parent_vserver

        # @return [Object, nil] The qos-policy-group-name which should be set for volume clone.
        attribute :qos_policy_group_name

        # @return [:volume, :none, nil] The space_reserve setting which should be used for the volume clone.
        attribute :space_reserve
        validates :space_reserve, inclusion: {:in=>[:volume, :none], :message=>"%{value} needs to be :volume, :none"}, allow_nil: true

        # @return [:rw, :dp, nil] The volume-type setting which should be used for the volume clone.
        attribute :volume_type
        validates :volume_type, inclusion: {:in=>[:rw, :dp], :message=>"%{value} needs to be :rw, :dp"}, allow_nil: true
      end
    end
  end
end
