# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages volumes on Scaleway account U(https://developer.scaleway.com)
      class Scaleway_volume < Base
        # @return [:present, :absent, nil] Indicate desired state of the volume.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:ams1, :"EMEA-NL-EVS", :par1, :"EMEA-FR-PAR1"] Scaleway region to use (for example par1).
        attribute :region
        validates :region, presence: true, expression_inclusion: {:in=>[:ams1, :"EMEA-NL-EVS", :par1, :"EMEA-FR-PAR1"], :message=>"%{value} needs to be :ams1, :\"EMEA-NL-EVS\", :par1, :\"EMEA-FR-PAR1\""}

        # @return [String] Name used to identify the volume.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] ScaleWay organization ID to which volume belongs.
        attribute :organization
        validates :organization, type: String

        # @return [Integer, nil] Size of the volume in bytes.
        attribute :size
        validates :size, type: Integer

        # @return [String, nil] Type of the volume (for example 'l_ssd').
        attribute :volume_type
        validates :volume_type, type: String
      end
    end
  end
end
