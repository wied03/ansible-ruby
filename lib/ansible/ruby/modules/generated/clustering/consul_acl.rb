# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows the addition, modification and deletion of ACL keys and associated rules in a consul cluster via the agent. For more details on using and configuring ACLs, see https://www.consul.io/docs/guides/acl.html.
      class Consul_acl < Base
        # @return [String, nil] a management token is required to manipulate the acl lists
        attribute :mgmt_token
        validates :mgmt_token, type: String

        # @return [:present, :absent, nil] whether the ACL pair should be present or absent
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:client, :management, nil] the type of token that should be created, either management or client
        attribute :token_type
        validates :token_type, expression_inclusion: {:in=>[:client, :management], :message=>"%{value} needs to be :client, :management"}, allow_nil: true

        # @return [String, nil] the name that should be associated with the acl key, this is opaque to Consul
        attribute :name
        validates :name, type: String

        # @return [String, nil] the token key indentifying an ACL rule set. If generated by consul this will be a UUID
        attribute :token
        validates :token, type: String

        # @return [Array<Hash>, Hash, nil] a list of the rules that should be associated with a given token
        attribute :rules
        validates :rules, type: TypeGeneric.new(Hash)

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
        validates :validate_certs, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
