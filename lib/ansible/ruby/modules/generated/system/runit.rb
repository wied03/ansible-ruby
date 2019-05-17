# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Controls runit services on remote hosts using the sv utility.
      class Runit < Base
        # @return [String] Name of the service to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:killed, :once, :reloaded, :restarted, :started, :stopped, nil] C(started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the service (sv restart) and C(killed) will always bounce the service (sv force-stop). C(reloaded) will send a HUP (sv reload). C(once) will run a normally downed sv once (sv once), not really an idempotent operation.
        attribute :state
        validates :state, inclusion: {:in=>[:killed, :once, :reloaded, :restarted, :started, :stopped], :message=>"%{value} needs to be :killed, :once, :reloaded, :restarted, :started, :stopped"}, allow_nil: true

        # @return [Symbol, nil] Whether the service is enabled or not, if disabled it also implies stopped.
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [String, nil] directory runsv watches for services
        attribute :service_dir
        validates :service_dir, type: String

        # @return [String, nil] directory where services are defined, the source of symlinks to service_dir.
        attribute :service_src
        validates :service_src, type: String
      end
    end
  end
end
