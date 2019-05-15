# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates or deletes volumes to be used on IBM Spectrum Accelerate storage systems.
      class Ibm_sa_vol < Base
        # @return [String] Volume name.
        attribute :vol
        validates :vol, presence: true, type: String

        # @return [String, nil] Volume pool.
        attribute :pool
        validates :pool, type: String

        # @return [:present, :absent] Volume state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Integer, nil] Volume size.
        attribute :size
        validates :size, type: Integer
      end
    end
  end
end
