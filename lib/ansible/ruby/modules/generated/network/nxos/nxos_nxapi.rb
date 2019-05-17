# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures the NXAPI feature on devices running Cisco NXOS.  The NXAPI feature is absent from the configuration by default.  Since this module manages the NXAPI feature it only supports the use of the C(Cli) transport.
      class Nxos_nxapi < Base
        # @return [Integer, nil] Configure the port with which the HTTP server will listen on for requests.  By default, NXAPI will bind the HTTP service to the standard HTTP port 80.  This argument accepts valid port values in the range of 1 to 65535.
        attribute :http_port
        validates :http_port, type: Integer

        # @return [Boolean, nil] Controls the operating state of the HTTP protocol as one of the underlying transports for NXAPI.  By default, NXAPI will enable the HTTP transport when the feature is first configured.  To disable the use of the HTTP transport, set the value of this argument to False.
        attribute :http
        validates :http, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Integer, nil] Configure the port with which the HTTPS server will listen on for requests.  By default, NXAPI will bind the HTTPS service to the standard HTTPS port 443.  This argument accepts valid port values in the range of 1 to 65535.
        attribute :https_port
        validates :https_port, type: Integer

        # @return [Symbol, nil] Controls the operating state of the HTTPS protocol as one of the underlying transports for NXAPI.  By default, NXAPI will disable the HTTPS transport when the feature is first configured.  To enable the use of the HTTPS transport, set the value of this argument to True.
        attribute :https
        validates :https, type: Symbol

        # @return [Symbol, nil] The NXAPI feature provides a web base UI for developers for entering commands.  This feature is initially disabled when the NXAPI feature is configured for the first time.  When the C(sandbox) argument is set to True, the developer sandbox URL will accept requests and when the value is set to False, the sandbox URL is unavailable. This is supported on NX-OS 7K series.
        attribute :sandbox
        validates :sandbox, type: Symbol

        # @return [:present, :absent, nil] The C(state) argument controls whether or not the NXAPI feature is configured on the remote device.  When the value is C(present) the NXAPI feature configuration is present in the device running-config.  When the values is C(absent) the feature configuration is removed from the running-config.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] Controls the use of whether strong or weak ciphers are configured. By default, this feature is disabled and weak ciphers are configured.  To enable the use of strong ciphers, set the value of this argument to True.
        attribute :ssl_strong_ciphers
        validates :ssl_strong_ciphers, type: Symbol

        # @return [Boolean, nil] Controls the use of the Transport Layer Security version 1.0 is configured.  By default, this feature is enabled.  To disable the use of TLSV1.0, set the value of this argument to True.
        attribute :tlsv1_0
        validates :tlsv1_0, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] Controls the use of the Transport Layer Security version 1.1 is configured.  By default, this feature is disabled.  To enable the use of TLSV1.1, set the value of this argument to True.
        attribute :tlsv1_1
        validates :tlsv1_1, type: Symbol

        # @return [Symbol, nil] Controls the use of the Transport Layer Security version 1.2 is configured.  By default, this feature is disabled.  To enable the use of TLSV1.2, set the value of this argument to True.
        attribute :tlsv1_2
        validates :tlsv1_2, type: Symbol
      end
    end
  end
end
