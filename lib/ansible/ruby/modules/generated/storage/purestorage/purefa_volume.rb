# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete or extend the capacity of a volume on Pure Storage FlashArray.
      class Purefa_volume < Base
        # @return [String] The name of the volume.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The name of the target volume, if copying.
        attribute :target
        validates :target, type: String

        # @return [:absent, :present, nil] Define whether the volume should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Define whether to eradicate the volume on delete or leave in trash.
        attribute :eradicate
        validates :eradicate, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Define whether to overwrite a target volume if it already exisits.
        attribute :overwrite
        validates :overwrite, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Volume size in M, G, T or P units.
        attribute :size
        validates :size, type: String
      end
    end
  end
end
