# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update and remove OMAPI hosts into compatible DHCPd servers.
      class Omapi_host < Base
        # @return [:present, :absent] Create or remove OMAPI host.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String, nil] Sets the host lease hostname (mandatory if state=present).
        attribute :name
        validates :name, type: String

        # @return [String, nil] Sets OMAPI server host to interact with.
        attribute :host
        validates :host, type: String

        # @return [Integer, nil] Sets the OMAPI server port to interact with.
        attribute :port
        validates :port, type: Integer

        # @return [String] Sets the TSIG key name for authenticating against OMAPI server.
        attribute :key_name
        validates :key_name, presence: true, type: String

        # @return [String] Sets the TSIG key content for authenticating against OMAPI server.
        attribute :key
        validates :key, presence: true, type: String

        # @return [String] Sets the lease host MAC address.
        attribute :macaddr
        validates :macaddr, presence: true, type: String

        # @return [String, nil] Sets the lease host IP address.
        attribute :ip
        validates :ip, type: String

        # @return [Object, nil] Attach a list of OMAPI DHCP statements with host lease (without ending semicolon).
        attribute :statements

        # @return [:yes, :no, nil] Enable dynamic DNS updates for this host.
        attribute :ddns
        validates :ddns, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
