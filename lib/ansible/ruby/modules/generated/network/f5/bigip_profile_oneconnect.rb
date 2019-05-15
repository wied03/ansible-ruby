# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage OneConnect profiles on a BIG-IP.
      class Bigip_profile_oneconnect < Base
        # @return [String] Specifies the name of the OneConnect profile.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Specifies the profile from which this profile inherits settings.,When creating a new profile, if this parameter is not specified, the default is the system-supplied C(oneconnect) profile.
        attribute :parent

        # @return [Object, nil] Specifies a value that the system applies to the source address to determine its eligibility for reuse.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.,The system applies the value of this setting to the server-side source address to determine its eligibility for reuse.,A mask of C(0) causes the system to share reused connections across all source addresses. A host mask of C(32) causes the system to share only those reused connections originating from the same source address.,When you are using a SNAT or SNAT pool, the server-side source address is translated first and then the OneConnect mask is applied to the translated address.
        attribute :source_mask

        # @return [Object, nil] Description of the profile.
        attribute :description

        # @return [Object, nil] Specifies the maximum number of connections that the system holds in the connection reuse pool.,If the pool is already full, then a server-side connection closes after the response is completed.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :maximum_size

        # @return [Object, nil] Specifies the maximum number of seconds allowed for a connection in the connection reuse pool.,For any connection with an age higher than this value, the system removes that connection from the re-use pool.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :maximum_age

        # @return [Object, nil] Specifies the maximum number of times that a server-side connection can be reused.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :maximum_reuse

        # @return [Object, nil] Specifies the number of seconds that a connection is idle before the connection flow is eligible for deletion.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.,You may specify a number of seconds for the timeout override.,When C(disabled), specifies that there is no timeout override for the connection.,When C(indefinite), Specifies that a connection may be idle with no timeout override.
        attribute :idle_timeout_override

        # @return [:none, :idle, :strict, nil] When C(none), simultaneous in-flight requests and responses over TCP connections to a pool member are counted toward the limit. This is the historical behavior.,When C(idle), idle connections will be dropped as the TCP connection limit is reached. For short intervals, during the overlap of the idle connection being dropped and the new connection being established, the TCP connection limit may be exceeded.,When C(strict), the TCP connection limit is honored with no exceptions. This means that idle connections will prevent new TCP connections from being made until they expire, even if they could otherwise be reused.,C(strict) is not a recommended configuration except in very special cases with short expiration timeouts.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :limit_type
        validates :limit_type, inclusion: {:in=>[:none, :idle, :strict], :message=>"%{value} needs to be :none, :idle, :strict"}, allow_nil: true

        # @return [Object, nil] Indicates that connections may be shared not only within a virtual server, but also among similar virtual servers,When C(yes), all virtual servers that use the same OneConnect and other internal network profiles can share connections.,When creating a new profile, if this parameter is not specified, the default is provided by the parent profile.
        attribute :share_pools

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
