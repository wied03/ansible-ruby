# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Eos_eapi < Base
        # @return [String] Set to started or stopped. A state of started will enable EAPI access, and a state of stopped will disable or shutdown all EAPI access.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped], :message=>"%{value} needs to be :started, :stopped"}, allow_nil: true

        # @return [Fixnum] Port on which the HTTP server will listen.
        attribute :http_port
        validates :http_port, type: Fixnum

        # @return [Fixnum] Port on which the HTTPS server will listen.
        attribute :https_port
        validates :https_port, type: Fixnum

        # @return [Fixnum] Port on which the local HTTP server will listen.
        attribute :local_http_port
        validates :local_http_port, type: Fixnum

        # @return [TrueClass] Enable HTTP server access.
        attribute :http
        validates :http, type: TrueClass

        # @return [TrueClass] Enable HTTPS server access.
        attribute :https
        validates :https, type: TrueClass

        # @return [TrueClass] Enable local HTTP server access.
        attribute :local_http
        validates :local_http, type: TrueClass

        # @return [TrueClass] Enable Unix socket server access.
        attribute :socket
        validates :socket, type: TrueClass
      end
    end
  end
end
