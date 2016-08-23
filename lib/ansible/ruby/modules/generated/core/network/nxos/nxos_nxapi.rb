# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nxos_nxapi < Base
        # @return [:started, :stopped, nil] Set to started or stopped. A state of started will enable NXAPI access, and a state of stopped will disable or shutdown all NXAPI access.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped], :message=>"%{value} needs to be :started, :stopped"}, allow_nil: true

        # @return [Fixnum] Port on which the HTTP server will listen.
        attribute :http_port
        validates :http_port, type: Fixnum

        # @return [Fixnum] Port on which the HTTPS server will listen.
        attribute :https_port
        validates :https_port, type: Fixnum

        # @return [TrueClass] Enable/disable HTTP server.
        attribute :http
        validates :http, type: TrueClass

        # @return [TrueClass] Enable/disable HTTPS server.
        attribute :https
        validates :https, type: TrueClass

        # @return [TrueClass] Enable/disable NXAPI web based UI for entering commands.
        attribute :sandbox
        validates :sandbox, type: TrueClass
      end
    end
  end
end
