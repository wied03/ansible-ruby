# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allow the syslog settings to be configured for an individual E-Series storage-system
      class Netapp_e_syslog < Base
        # @return [:present, :absent, nil] Add or remove the syslog server configuration for E-Series storage array.,Existing syslog server configuration will be removed or updated when its address matches I(address).,Fully qualified hostname that resolve to an IPv4 address that matches I(address) will not be treated as a match.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The syslog server's IPv4 address or a fully qualified hostname.,All existing syslog configurations will be removed when I(state=absent) and I(address=None).
        attribute :address
        validates :address, type: String

        # @return [Integer, nil] This is the port the syslog server is using.
        attribute :port
        validates :port, type: Integer

        # @return [:udp, :tcp, :tls, nil] This is the transmission protocol the syslog server's using to receive syslog messages.
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:udp, :tcp, :tls], :message=>"%{value} needs to be :udp, :tcp, :tls"}, allow_nil: true

        # @return [String, nil] The e-series logging components define the specific logs to transfer to the syslog server.,At the time of writing, 'auditLog' is the only logging component but more may become available.
        attribute :components
        validates :components, type: String

        # @return [Boolean, nil] This forces a test syslog message to be sent to the stated syslog server.,Only attempts transmission when I(state=present).
        attribute :test
        validates :test, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] This argument specifies a local path for logging purposes.
        attribute :log_path
      end
    end
  end
end
