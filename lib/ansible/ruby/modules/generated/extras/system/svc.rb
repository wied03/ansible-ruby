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

        # @return [:started, :stopped, :restarted, :reloaded, :once, nil] C(Started)/C(stopped) are idempotent actions that will not run commands unless necessary.  C(restarted) will always bounce the svc (svc -t) and C(killed) will always bounce the svc (svc -k). C(reloaded) will send a sigusr1 (svc -1). C(once) will run a normally downed svc once (svc -o), not really an idempotent operation.
        attribute :state
        validates :state, inclusion: {:in=>[:started, :stopped, :restarted, :reloaded, :once], :message=>"%{value} needs to be :started, :stopped, :restarted, :reloaded, :once"}, allow_nil: true

        # @return [Boolean, nil] Should a 'down' file exist or not, if it exists it disables auto startup. defaults to no. Downed does not imply stopped.
        attribute :downed
        validates :downed, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] Wheater the service is enabled or not, if disabled it also implies stopped. Make note that a service can be enabled and downed (no auto restart).
        attribute :enabled
        validates :enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] directory svscan watches for services
        attribute :service_dir
        validates :service_dir, type: String

        # @return [Object, nil] directory where services are defined, the source of symlinks to service_dir.
        attribute :service_src
      end
    end
  end
end
