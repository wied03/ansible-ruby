# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the state of a virtual host in RabbitMQ
      class Rabbitmq_vhost < Base
        # @return [String] The name of the vhost to manage
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] erlang node name of the rabbit we wish to configure
        attribute :node
        validates :node, type: String

        # @return [:yes, :no, nil] Enable/disable tracing for a vhost
        attribute :tracing
        validates :tracing, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] The state of vhost
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
