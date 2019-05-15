# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/destroy Block Storage volume in DigitalOcean, or attach/detach Block Storage volume to a droplet.
      class Digital_ocean_block_storage < Base
        # @return [:create, :attach] Which operation do you want to perform.
        attribute :command
        validates :command, presence: true, inclusion: {:in=>[:create, :attach], :message=>"%{value} needs to be :create, :attach"}

        # @return [:present, :absent] Indicate desired state of the target.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Integer, nil] The size of the Block Storage volume in gigabytes. Required when command=create and state=present. If snapshot_id is included, this will be ignored.
        attribute :block_size
        validates :block_size, type: Integer

        # @return [String] The name of the Block Storage volume.
        attribute :volume_name
        validates :volume_name, presence: true, type: String

        # @return [Object, nil] Description of the Block Storage volume.
        attribute :description

        # @return [String] The slug of the region where your Block Storage volume should be located in. If snapshot_id is included, this will be ignored.
        attribute :region
        validates :region, presence: true, type: String

        # @return [Object, nil] The snapshot id you would like the Block Storage volume created with. If included, region and block_size will be ignored and changed to null.
        attribute :snapshot_id

        # @return [String, nil] The droplet id you want to operate on. Required when command=attach.
        attribute :droplet_id
        validates :droplet_id, type: String
      end
    end
  end
end
