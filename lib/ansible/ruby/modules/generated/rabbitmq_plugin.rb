# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rabbitmq_plugin < Base
        # @return [String] Comma-separated list of plugin names
        attribute :names
        validates :names, presence: true, type: String

        # @return [String] Only enable missing plugins,Does not disable plugins that are not in the names list
        attribute :new_only
        validates :new_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Specify if plugins are to be enabled or disabled
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object] Specify a custom install prefix to a Rabbit
        attribute :prefix
      end
    end
  end
end
