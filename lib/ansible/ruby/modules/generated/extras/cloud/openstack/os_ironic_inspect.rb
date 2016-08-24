# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_ironic_inspect < Base
        # @return [Object, nil] unique mac address that is used to attempt to identify the host.
        attribute :mac

        # @return [Object, nil] globally unique identifier (UUID) to identify the host.
        attribute :uuid

        # @return [String, nil] unique name identifier to identify the host in Ironic.
        attribute :name
        validates :name, type: String

        # @return [Object, nil] If noauth mode is utilized, this is required to be set to the endpoint URL for the Ironic API. Use with "auth" and "auth_type" settings set to None.
        attribute :ironic_url

        # @return [Integer, nil] A timeout in seconds to tell the role to wait for the node to complete introspection if wait is set to True.
        attribute :timeout
        validates :timeout, type: Integer
      end
    end
  end
end