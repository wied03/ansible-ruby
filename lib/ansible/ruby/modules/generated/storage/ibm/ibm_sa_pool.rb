# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates or deletes pools to be used on IBM Spectrum Accelerate storage systems.
      class Ibm_sa_pool < Base
        # @return [Object] Pool name.
        attribute :pool
        validates :pool, presence: true

        # @return [:present, :absent] Pool state.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Integer, nil] Pool size in GB
        attribute :size
        validates :size, type: Integer

        # @return [Object, nil] Pool snapshot size in GB
        attribute :snapshot_size

        # @return [Object, nil] Adds the pool to the specified domain.
        attribute :domain

        # @return [Object, nil] Assigns a perf_class to the pool.
        attribute :perf_class
      end
    end
  end
end
