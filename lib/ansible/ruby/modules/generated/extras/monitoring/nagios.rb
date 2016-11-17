# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # The M(nagios) module has two basic functions: scheduling downtime and toggling alerts for services or hosts.
      # All actions require the I(host) parameter to be given explicitly. In playbooks you can use the C({{inventory_hostname}}) variable to refer to the host the playbook is currently running on.
      # You can specify multiple services at once by separating them with commas, .e.g., C(services=httpd,nfs,puppet).
      # When specifying what service to handle there is a special service value, I(host), which will handle alerts/downtime for the I(host itself), e.g., C(service=host). This keyword may not be given with other services at the same time. I(Setting alerts/downtime for a host does not affect alerts/downtime for any of the services running on it.) To schedule downtime for all services on particular host use keyword "all", e.g., C(service=all).
      # When using the M(nagios) module you will need to specify your Nagios server using the C(delegate_to) parameter.
      class Nagios < Base
        # @return [:downtime, :delete_downtime, :enable_alerts, :disable_alerts, :silence, :unsilence, :silence_nagios, :unsilence_nagios, :command, :servicegroup_service_downtime, :servicegroup_host_downtime] Action to take.,servicegroup options were added in 2.0.,delete_downtime options were added in 2.2.
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:downtime, :delete_downtime, :enable_alerts, :disable_alerts, :silence, :unsilence, :silence_nagios, :unsilence_nagios, :command, :servicegroup_service_downtime, :servicegroup_host_downtime], :message=>"%{value} needs to be :downtime, :delete_downtime, :enable_alerts, :disable_alerts, :silence, :unsilence, :silence_nagios, :unsilence_nagios, :command, :servicegroup_service_downtime, :servicegroup_host_downtime"}

        # @return [String, nil] Host to operate on in Nagios.
        attribute :host
        validates :host, type: String

        # @return [String, nil] Path to the nagios I(command file) (FIFO pipe). Only required if auto-detection fails.
        attribute :cmdfile
        validates :cmdfile, type: String

        # @return [String, nil] Author to leave downtime comments as. Only usable with the C(downtime) action.
        attribute :author
        validates :author, type: String

        # @return [String, nil] Comment for C(downtime) action.
        attribute :comment
        validates :comment, type: String

        # @return [Integer, nil] Minutes to schedule downtime for.,Only usable with the C(downtime) action.
        attribute :minutes
        validates :minutes, type: Integer

        # @return [Array<String>, String] What to manage downtime/alerts for. Separate multiple services with commas. C(service) is an alias for C(services). B(Required) option when using the C(downtime), C(enable_alerts), and C(disable_alerts) actions.
        attribute :services
        validates :services, presence: true, type: TypeGeneric.new(String)

        # @return [String, nil] The Servicegroup we want to set downtimes/alerts for. B(Required) option when using the C(servicegroup_service_downtime) amd C(servicegroup_host_downtime).
        attribute :servicegroup
        validates :servicegroup, type: String

        # @return [String] The raw command to send to nagios, which should not include the submitted time header or the line-feed B(Required) option when using the C(command) action.
        attribute :command
        validates :command, presence: true, type: String
      end
    end
  end
end
