# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # An isolated set of Cloud Spanner resources on which databases can be hosted.
      class Gcp_spanner_instance < Base
        # @return [:present, :absent, nil] Whether the given object should exist in GCP
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form projects/<project>/instances/[a-z][-a-z0-9]*[a-z0-9]. The final segment of the name must be between 6 and 30 characters in length.
        attribute :name
        validates :name, type: String

        # @return [String, nil] A reference to the instance configuration.
        attribute :config
        validates :config, type: String

        # @return [String] The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.
        attribute :display_name
        validates :display_name, presence: true, type: String

        # @return [Integer, nil] The number of nodes allocated to this instance.
        attribute :node_count
        validates :node_count, type: Integer

        # @return [Hash, nil] Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.).,Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `[a-z]([-a-z0-9]*[a-z0-9])?`.,Label values must be between 0 and 63 characters long and must conform to the regular expression `([a-z]([-a-z0-9]*[a-z0-9])?)?`.,No more than 64 labels can be associated with a given resource.,See U(https://goo.gl/xmQnxf) for more information on and examples of labels.,If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.,An object containing a list of "key": value pairs.,Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
        attribute :labels
        validates :labels, type: Hash
      end
    end
  end
end
