# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete volumes and filesystem snapshots on Pure Storage FlashBlades.
      class Purefb_snap < Base
        # @return [String] The name of the source filesystem.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Suffix of snapshot name.
        attribute :suffix
        validates :suffix, type: String

        # @return [:absent, :present, nil] Define whether the filesystem snapshot should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Define whether to eradicate the snapshot on delete or leave in trash.
        attribute :eradicate
        validates :eradicate, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
