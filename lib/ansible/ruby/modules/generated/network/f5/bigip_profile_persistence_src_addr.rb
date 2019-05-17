# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages source address persistence profiles.
      class Bigip_profile_persistence_src_addr < Base
        # @return [String] Specifies the name of the profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Specifies the profile from which this profile inherits settings.,When creating a new profile, if this parameter is not specified, the default is the system-supplied C(source_addr) profile.
        attribute :parent

        # @return [Symbol, nil] When C(yes), specifies that all persistent connections from a client IP address that go to the same virtual IP address also go to the same node.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :match_across_services
        validates :match_across_services, type: Symbol

        # @return [Symbol, nil] When C(yes), specifies that all persistent connections from the same client IP address go to the same node.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :match_across_virtuals
        validates :match_across_virtuals, type: Symbol

        # @return [Symbol, nil] When C(yes), specifies that the system can use any pool that contains this persistence record.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :match_across_pools
        validates :match_across_pools, type: Symbol

        # @return [:default, :carp, nil] Specifies the algorithm the system uses for hash persistence load balancing. The hash result is the input for the algorithm.,When C(default), specifies that the system uses the index of pool members to obtain the hash result for the input to the algorithm.,When C(carp), specifies that the system uses the Cache Array Routing Protocol (CARP) to obtain the hash result for the input to the algorithm.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :hash_algorithm
        validates :hash_algorithm, inclusion: {:in=>[:default, :carp], :message=>"%{value} needs to be :default, :carp"}, allow_nil: true

        # @return [Object, nil] Specifies the duration of the persistence entries.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.,To specify an indefinite timeout, use the value C(indefinite).,If specifying a numeric timeout, the value must be between C(1) and C(4294967295).
        attribute :entry_timeout

        # @return [Symbol, nil] When C(yes), specifies that the system allows you to specify that pool member connection limits will be overridden for persisted clients.,Per-virtual connection limits remain hard limits and are not overridden.
        attribute :override_connection_limit
        validates :override_connection_limit, type: Symbol

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the profile exists.,When C(absent), ensures the profile is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
