# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage RabbitMQ plugins.
      class Rabbitmq_plugin < Base
        # @return [String] Comma-separated list of plugin names.
        attribute :names
        validates :names, presence: true, type: String

        # @return [:yes, :no, nil] Only enable missing plugins.,Does not disable plugins that are not in the names list.
        attribute :new_only
        validates :new_only, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Specify if plugins are to be enabled or disabled.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Specify a custom install prefix to a Rabbit.
        attribute :prefix
      end
    end
  end
end
