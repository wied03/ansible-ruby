# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Controls daemontools services on remote hosts using the svc utility.
      class Svc < Base
        # @return [String] Name of the service to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:killed, :once, :reloaded, :restarted, :started, :stopped, nil] C(Started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the svc (svc -t) and C(killed) will always bounce the svc (svc -k). C(reloaded) will send a sigusr1 (svc -1). C(once) will run a normally downed svc once (svc -o), not really an idempotent operation.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:killed, :once, :reloaded, :restarted, :started, :stopped], :message=>"%{value} needs to be :killed, :once, :reloaded, :restarted, :started, :stopped"}, allow_nil: true

        # @return [:yes, :no, nil] Should a 'down' file exist or not, if it exists it disables auto startup. defaults to no. Downed does not imply stopped.
        attribute :downed
        validates :downed, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] Wheater the service is enabled or not, if disabled it also implies stopped. Make note that a service can be enabled and downed (no auto restart).
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [String, nil] directory svscan watches for services
        attribute :service_dir
        validates :service_dir, type: String

        # @return [Object, nil] directory where services are defined, the source of symlinks to service_dir.
        attribute :service_src
      end
    end
  end
end
