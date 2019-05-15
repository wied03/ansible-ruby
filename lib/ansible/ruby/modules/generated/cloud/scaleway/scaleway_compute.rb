# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages compute instances on Scaleway.
      class Scaleway_compute < Base
        # @return [Boolean, nil] Enable public IPv6 connectivity on the instance
        attribute :enable_ipv6
        validates :enable_ipv6, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] Image identifier used to start the instance with
        attribute :image
        validates :image, presence: true, type: String

        # @return [String, nil] Name of the instance
        attribute :name
        validates :name, type: String

        # @return [String] Organization identifier
        attribute :organization
        validates :organization, presence: true, type: String

        # @return [:present, :absent, :running, :restarted, :stopped, nil] Indicate desired state of the instance.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :running, :restarted, :stopped], :message=>"%{value} needs to be :present, :absent, :running, :restarted, :stopped"}, allow_nil: true

        # @return [Object, nil] List of tags to apply to the instance (5 max)
        attribute :tags

        # @return [:ams1, :"EMEA-NL-EVS", :par1, :"EMEA-FR-PAR1"] Scaleway compute zone
        attribute :region
        validates :region, presence: true, inclusion: {:in=>[:ams1, :"EMEA-NL-EVS", :par1, :"EMEA-FR-PAR1"], :message=>"%{value} needs to be :ams1, :\"EMEA-NL-EVS\", :par1, :\"EMEA-FR-PAR1\""}

        # @return [:"ARM64-2GB", :"ARM64-4GB", :"ARM64-8GB", :"ARM64-16GB", :"ARM64-32GB", :"ARM64-64GB", :"ARM64-128GB", :C1, :C2S, :C2M, :C2L, :"START1-XS", :"START1-S", :"START1-M", :"START1-L", :"X64-15GB", :"X64-30GB", :"X64-60GB", :"X64-120GB"] Commercial name of the compute node
        attribute :commercial_type
        validates :commercial_type, presence: true, inclusion: {:in=>[:"ARM64-2GB", :"ARM64-4GB", :"ARM64-8GB", :"ARM64-16GB", :"ARM64-32GB", :"ARM64-64GB", :"ARM64-128GB", :C1, :C2S, :C2M, :C2L, :"START1-XS", :"START1-S", :"START1-M", :"START1-L", :"X64-15GB", :"X64-30GB", :"X64-60GB", :"X64-120GB"], :message=>"%{value} needs to be :\"ARM64-2GB\", :\"ARM64-4GB\", :\"ARM64-8GB\", :\"ARM64-16GB\", :\"ARM64-32GB\", :\"ARM64-64GB\", :\"ARM64-128GB\", :C1, :C2S, :C2M, :C2L, :\"START1-XS\", :\"START1-S\", :\"START1-M\", :\"START1-L\", :\"X64-15GB\", :\"X64-30GB\", :\"X64-60GB\", :\"X64-120GB\""}

        # @return [String, nil] Wait for the instance to reach its desired state before returning.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] Time to wait for the server to reach the expected state
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Integer, nil] Time to wait before every attempt to check the state of the server
        attribute :wait_sleep_time
        validates :wait_sleep_time, type: Integer
      end
    end
  end
end
