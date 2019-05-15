# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows to post events to Datadog (www.datadoghq.com) service.
      # Uses http://docs.datadoghq.com/api/#events API.
      class Datadog_event < Base
        # @return [String] Your DataDog API key.
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] Your DataDog app key.
        attribute :app_key
        validates :app_key, presence: true, type: String

        # @return [String] The event title.
        attribute :title
        validates :title, presence: true, type: String

        # @return [String] The body of the event.
        attribute :text
        validates :text, presence: true, type: String

        # @return [String, nil] POSIX timestamp of the event.,Default value is now.
        attribute :date_happened
        validates :date_happened, type: String

        # @return [:normal, :low, nil] The priority of the event.
        attribute :priority
        validates :priority, inclusion: {:in=>[:normal, :low], :message=>"%{value} needs to be :normal, :low"}, allow_nil: true

        # @return [String, nil] Host name to associate with the event.
        attribute :host
        validates :host, type: String

        # @return [Array<String>, String, nil] Comma separated list of tags to apply to the event.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [:error, :warning, :info, :success, nil] Type of alert.
        attribute :alert_type
        validates :alert_type, inclusion: {:in=>[:error, :warning, :info, :success], :message=>"%{value} needs to be :error, :warning, :info, :success"}, allow_nil: true

        # @return [Object, nil] An arbitrary string to use for aggregation.
        attribute :aggregation_key

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
