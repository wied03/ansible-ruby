# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Use to enable or disable EAPI access, and set the port and state of http, https, localHttp and unix-socket servers.
      # When enabling EAPI access the default is to enable HTTP on port 80, enable HTTPS on port 443, disable local HTTP, and disable Unix socket server. Use the options listed below to override the default configuration.
      # Requires EOS v4.12 or greater.
      class Eos_eapi < Base
        # @return [:started, :stopped, nil] Set to started or stopped. A state of started will enable EAPI access, and a state of stopped will disable or shutdown all EAPI access.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped], :message=>"%{value} needs to be :started, :stopped"}, allow_nil: true

        # @return [Integer, nil] Port on which the HTTP server will listen.
        attribute :http_port
        validates :http_port, type: Integer

        # @return [Integer, nil] Port on which the HTTPS server will listen.
        attribute :https_port
        validates :https_port, type: Integer

        # @return [Integer, nil] Port on which the local HTTP server will listen.
        attribute :local_http_port
        validates :local_http_port, type: Integer

        # @return [Boolean, nil] Enable HTTP server access.
        attribute :http
        validates :http, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable HTTPS server access.
        attribute :https
        validates :https, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable local HTTP server access.
        attribute :local_http
        validates :local_http, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Enable Unix socket server access.
        attribute :socket
        validates :socket, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
