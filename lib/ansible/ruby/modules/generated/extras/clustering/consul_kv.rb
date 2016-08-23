# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Consul_kv < Base
        # @return [:present, :absent, :acquire, :release, nil] the action to take with the supplied key and value. If the state is 'present', the key contents will be set to the value supplied, 'changed' will be set to true only if the value was different to the current contents. The state 'absent' will remove the key/value pair, again 'changed' will be set to true only if the key actually existed prior to the removal. An attempt can be made to obtain or free the lock associated with a key/value pair with the states 'acquire' or 'release' respectively. a valid session must be supplied to make the attempt changed will be true if the attempt is successful, false otherwise.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :acquire, :release], :message=>"%{value} needs to be :present, :absent, :acquire, :release"}, allow_nil: true

        # @return [String] the key at which the value should be stored.
        attribute :key
        validates :key, presence: true, type: String

        # @return [Fixnum] the value should be associated with the given key, required if state is present
        attribute :value
        validates :value, presence: true, type: Fixnum

        # @return [Object] if the key represents a prefix, each entry with the prefix can be retrieved by setting this to true.
        attribute :recurse

        # @return [String] the session that should be used to acquire or release a lock associated with a key/value pair
        attribute :session
        validates :session, type: String

        # @return [String] the token key indentifying an ACL rule set that controls access to the key value pair
        attribute :token
        validates :token, type: String

        # @return [String] used when acquiring a lock with a session. If the cas is 0, then Consul will only put the key if it does not already exist. If the cas value is non-zero, then the key is only set if the index matches the ModifyIndex of that key.
        attribute :cas
        validates :cas, type: String

        # @return [String] opaque integer value that can be passed when setting a value.
        attribute :flags
        validates :flags, type: String

        # @return [String] host of the consul agent defaults to localhost
        attribute :host
        validates :host, type: String

        # @return [Fixnum] the port on which the consul agent is running
        attribute :port
        validates :port, type: Fixnum

        # @return [String] the protocol scheme on which the consul agent is running
        attribute :scheme
        validates :scheme, type: String

        # @return [TrueClass] whether to verify the tls certificate of the consul agent
        attribute :validate_certs
        validates :validate_certs, type: TrueClass
      end
    end
  end
end
