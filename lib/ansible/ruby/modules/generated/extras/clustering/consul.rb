# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Consul < Base
        # @return [:present, :absent] register or deregister the consul service, defaults to present
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] Unique name for the service on a node, must be unique per node, required if registering a service. May be ommitted if registering a node level check
        attribute :service_name
        validates :service_name, type: String

        # @return [String, nil] the ID for the service, must be unique per node, defaults to the service name if the service name is supplied
        attribute :service_id
        validates :service_id, type: String

        # @return [String, nil] host of the consul agent defaults to localhost
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] the port on which the consul agent is running
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] the protocol scheme on which the consul agent is running
        attribute :scheme
        validates :scheme, type: String

        # @return [Boolean, nil] whether to verify the tls certificate of the consul agent
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Notes to attach to check when registering it.
        attribute :notes

        # @return [Integer, nil] the port on which the service is listening required for registration of a service, i.e. if service_name or service_id is set
        attribute :service_port
        validates :service_port, type: Integer

        # @return [String, nil] the address to advertise that the service will be listening on. This value will be passed as the I(Address) parameter to Consul's U(/v1/agent/service/register) API method, so refer to the Consul API documentation for further details.
        attribute :service_address
        validates :service_address, type: String

        # @return [Array<String>, String, nil] a list of tags that will be attached to the service registration.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [String, nil] the script/command that will be run periodically to check the health of the service. Scripts require an interval and vise versa
        attribute :script
        validates :script, type: String

        # @return [String, nil] the interval at which the service check will be run. This is a number with a s or m suffix to signify the units of seconds or minutes e.g 15s or 1m. If no suffix is supplied, m will be used by default e.g. 1 will be 1m. Required if the script param is specified.
        attribute :interval
        validates :interval, type: String

        # @return [String, nil] an ID for the service check, defaults to the check name, ignored if part of a service definition.
        attribute :check_id
        validates :check_id, type: String

        # @return [String, nil] a name for the service check, defaults to the check id. required if standalone, ignored if part of service definition.
        attribute :check_name
        validates :check_name, type: String

        # @return [Object, nil] checks can be registered with a ttl instead of a script and interval this means that the service will check in with the agent before the ttl expires. If it doesn't the check will be considered failed. Required if registering a check and the script an interval are missing Similar to the interval this is a number with a s or m suffix to signify the units of seconds or minutes e.g 15s or 1m. If no suffix is supplied, m will be used by default e.g. 1 will be 1m
        attribute :ttl

        # @return [String, nil] checks can be registered with an http endpoint. This means that consul will check that the http endpoint returns a successful http status. Interval must also be provided with this option.
        attribute :http
        validates :http, type: String

        # @return [Object, nil] A custom HTTP check timeout. The consul default is 10 seconds. Similar to the interval this is a number with a s or m suffix to signify the units of seconds or minutes, e.g. 15s or 1m.
        attribute :timeout

        # @return [Object, nil] the token key indentifying an ACL rule set. May be required to register services.
        attribute :token
      end
    end
  end
end
