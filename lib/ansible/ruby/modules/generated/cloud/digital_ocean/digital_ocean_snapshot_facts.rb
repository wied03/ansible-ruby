# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about snapshot facts based upon provided values such as droplet, volume and snapshot id.
      class Digital_ocean_snapshot_facts < Base
        # @return [:all, :droplet, :volume, :by_id, nil] Specifies the type of snapshot facts to be retrived.,If set to C(droplet), then facts are gathered related to snapshots based on Droplets only.,If set to C(volume), then facts are gathered related to snapshots based on volumes only.,If set to C(by_id), then facts are gathered related to snapshots based on snapshot id only.,If not set to any of the above, then facts are gathered related to all snapshots.
        attribute :snapshot_type
        validates :snapshot_type, expression_inclusion: {:in=>[:all, :droplet, :volume, :by_id], :message=>"%{value} needs to be :all, :droplet, :volume, :by_id"}, allow_nil: true

        # @return [Integer, String, nil] To retrieve information about a snapshot, please specify this as a snapshot id.,If set to actual snapshot id, then facts are gathered related to that particular snapshot only.,This is required parameter, if C(snapshot_type) is set to C(by_id).
        attribute :snapshot_id
        validates :snapshot_id, type: MultipleTypes.new(Integer, String)
      end
    end
  end
end
