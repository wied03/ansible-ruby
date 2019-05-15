# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows the retrieval, addition, modification and deletion of key/value entries in a consul cluster via the agent. The entire contents of the record, including the indices, flags and session are returned as 'value'.
      # If the key represents a prefix then Note that when a value is removed, the existing value if any is returned as part of the results.
      # See http://www.consul.io/docs/agent/http.html#kv for more details.
      class Consul_kv < Base
        # @return [:absent, :acquire, :present, :release, nil] The action to take with the supplied key and value. If the state is 'present' and `value` is set, the key contents will be set to the value supplied and `changed` will be set to `true` only if the value was different to the current contents. If the state is 'present' and `value` is not set, the existing value associated to the key will be returned. The state 'absent' will remove the key/value pair, again 'changed' will be set to true only if the key actually existed prior to the removal. An attempt can be made to obtain or free the lock associated with a key/value pair with the states 'acquire' or 'release' respectively. a valid session must be supplied to make the attempt changed will be true if the attempt is successful, false otherwise.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :acquire, :present, :release], :message=>"%{value} needs to be :absent, :acquire, :present, :release"}, allow_nil: true

        # @return [String] The key at which the value should be stored.
        attribute :key
        validates :key, presence: true, type: String

        # @return [String, Integer] The value should be associated with the given key, required if C(state) is C(present).
        attribute :value
        validates :value, presence: true, type: MultipleTypes.new(String, Integer)

        # @return [String, nil] If the key represents a prefix, each entry with the prefix can be retrieved by setting this to C(yes).
        attribute :recurse
        validates :recurse, type: String

        # @return [String, nil] The session that should be used to acquire or release a lock associated with a key/value pair.
        attribute :session
        validates :session, type: String

        # @return [Object, nil] The token key indentifying an ACL rule set that controls access to the key value pair
        attribute :token

        # @return [Object, nil] Used when acquiring a lock with a session. If the C(cas) is C(0), then Consul will only put the key if it does not already exist. If the C(cas) value is non-zero, then the key is only set if the index matches the ModifyIndex of that key.
        attribute :cas

        # @return [Object, nil] Opaque integer value that can be passed when setting a value.
        attribute :flags

        # @return [String, nil] Host of the consul agent.
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] The port on which the consul agent is running.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] The protocol scheme on which the consul agent is running.
        attribute :scheme
        validates :scheme, type: String

        # @return [String, nil] Whether to verify the tls certificate of the consul agent.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
