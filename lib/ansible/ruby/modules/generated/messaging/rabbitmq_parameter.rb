# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage dynamic, cluster-wide parameters for RabbitMQ
      class Rabbitmq_parameter < Base
        # @return [String] Name of the component of which the parameter is being set
        attribute :component
        validates :component, presence: true, type: String

        # @return [String] Name of the parameter being set
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Value of the parameter, as a JSON term
        attribute :value
        validates :value, type: String

        # @return [String, nil] vhost to apply access privileges.
        attribute :vhost
        validates :vhost, type: String

        # @return [String, nil] erlang node name of the rabbit we wish to configure
        attribute :node
        validates :node, type: String

        # @return [:present, :absent, nil] Specify if user is to be added or removed
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
