# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module uses rabbitMQ REST APIs to create / delete bindings.
      class Rabbitmq_binding < Base
        # @return [:present, :absent, nil] Whether the bindings should be present or absent.,Only present implemented at the momemt.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] source exchange to create binding on.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] rabbitMQ user for the connection.
        attribute :login_user
        validates :login_user, type: String

        # @return [Boolean, nil] rabbitMQ password for the connection.
        attribute :login_password
        validates :login_password, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] rabbitMQ host for the connection.
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] rabbitMQ management API port.
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] rabbitMQ virtual host.
        attribute :vhost
        validates :vhost, type: String

        # @return [String] destination exchange or queue for the binding.
        attribute :destination
        validates :destination, presence: true, type: String

        # @return [:queue, :exchange] Either queue or exchange.
        attribute :destination_type
        validates :destination_type, presence: true, expression_inclusion: {:in=>[:queue, :exchange], :message=>"%{value} needs to be :queue, :exchange"}

        # @return [String, nil] routing key for the binding.
        attribute :routing_key
        validates :routing_key, type: String

        # @return [Object, nil] extra arguments for exchange. If defined this argument is a key/value dictionary.
        attribute :arguments
      end
    end
  end
end
