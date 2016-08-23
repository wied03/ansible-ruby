# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pagerduty_alert < Base
        # @return [String] PagerDuty unique subdomain.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The GUID of one of your "Generic API" services.,This is the "service key" listed on a Generic API's service detail page.
        attribute :service_key
        validates :service_key, presence: true, type: String

        # @return [:triggered, :acknowledged, :resolved] Type of event to be sent.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:triggered, :acknowledged, :resolved], :message=>"%{value} needs to be :triggered, :acknowledged, :resolved"}

        # @return [String] The pagerduty API key (readonly access), generated on the pagerduty site.
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] For C(triggered) I(state) - Required. Short description of the problem that led to this trigger. This field (or a truncated version) will be used when generating phone calls, SMS messages and alert emails. It will also appear on the incidents tables in the PagerDuty UI. The maximum length is 1024 characters.,For C(acknowledged) or C(resolved) I(state) - Text that will appear in the incident's log associated with this event.
        attribute :desc
        validates :desc, type: String

        # @return [String] Identifies the incident to which this I(state) should be applied.,For C(triggered) I(state) - If there's no open (i.e. unresolved) incident with this key, a new one will be created. If there's already an open incident with a matching key, this event will be appended to that incident's log. The event key provides an easy way to "de-dup" problem reports.,For C(acknowledged) or C(resolved) I(state) - This should be the incident_key you received back when the incident was first opened by a trigger event. Acknowledge events referencing resolved or nonexistent incidents will be discarded.
        attribute :incident_key
        validates :incident_key, type: String

        # @return [String] The name of the monitoring client that is triggering this event.
        attribute :client
        validates :client, type: String

        # @return [String] The URL of the monitoring client that is triggering this event.
        attribute :client_url
        validates :client_url, type: String
      end
    end
  end
end
