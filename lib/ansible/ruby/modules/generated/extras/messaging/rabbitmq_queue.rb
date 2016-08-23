# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rabbitmq_queue < Base
        # @return [String] Name of the queue to create
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the queue should be present or absent,Only present implemented atm
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] rabbitMQ user for connection
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] rabbitMQ password for connection
        attribute :login_password
        validates :login_password, type: String

        # @return [String, nil] rabbitMQ host for connection
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] rabbitMQ management api port
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] rabbitMQ virtual host
        attribute :vhost
        validates :vhost, type: String

        # @return [:yes, :no, nil] whether queue is durable or not
        attribute :durable
        validates :durable, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] if the queue should delete itself after all queues/queues unbound from it
        attribute :auto_delete
        validates :auto_delete, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] How long a message can live in queue before it is discarded (milliseconds)
        attribute :message_ttl
        validates :message_ttl, type: String

        # @return [String, nil] How long a queue can be unused before it is automatically deleted (milliseconds)
        attribute :auto_expires
        validates :auto_expires, type: String

        # @return [String, nil] How many messages can the queue contain before it starts rejecting
        attribute :max_length
        validates :max_length, type: String

        # @return [String, nil] Optional name of an exchange to which messages will be republished if they,are rejected or expire
        attribute :dead_letter_exchange
        validates :dead_letter_exchange, type: String

        # @return [String, nil] Optional replacement routing key to use when a message is dead-lettered.,Original routing key will be used if unset
        attribute :dead_letter_routing_key
        validates :dead_letter_routing_key, type: String

        # @return [Hash, nil] extra arguments for queue. If defined this argument is a key/value dictionary
        attribute :arguments
        validates :arguments, type: Hash
      end
    end
  end
end
