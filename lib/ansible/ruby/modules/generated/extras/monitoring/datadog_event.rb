# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Datadog_event < Base
        # @return [Object] Your DataDog API key.
        attribute :api_key
        validates :api_key, presence: true

        # @return [Object] The event title.
        attribute :title
        validates :title, presence: true

        # @return [Object] The body of the event.
        attribute :text
        validates :text, presence: true

        # @return [String] POSIX timestamp of the event.,Default value is now.
        attribute :date_happened
        validates :date_happened, type: String

        # @return [String] The priority of the event.
        attribute :priority
        validates :priority, inclusion: {:in=>[:normal, :low], :message=>"%{value} needs to be :normal, :low"}, allow_nil: true

        # @return [Object] Comma separated list of tags to apply to the event.
        attribute :tags

        # @return [String] Type of alert.
        attribute :alert_type
        validates :alert_type, inclusion: {:in=>[:error, :warning, :info, :success], :message=>"%{value} needs to be :error, :warning, :info, :success"}, allow_nil: true

        # @return [Object] An arbitrary string to use for aggregation.
        attribute :aggregation_key

        # @return [String] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end