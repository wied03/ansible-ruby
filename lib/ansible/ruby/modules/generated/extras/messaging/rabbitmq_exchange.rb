# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rabbitmq_exchange < Base
        # @return [String] Name of the exchange to create
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the exchange should be present or absent,Only present implemented atm
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] rabbitMQ user for connection
        attribute :login_user
        validates :login_user, type: String

        # @return [Object, nil] rabbitMQ password for connection
        attribute :login_password

        # @return [String, nil] rabbitMQ host for connection
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] rabbitMQ management api port
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] rabbitMQ virtual host
        attribute :vhost
        validates :vhost, type: String

        # @return [:yes, :no, nil] whether exchange is durable or not
        attribute :durable
        validates :durable, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:fanout, :direct, :headers, :topic, nil] type for the exchange
        attribute :exchange_type
        validates :exchange_type, inclusion: {:in=>[:fanout, :direct, :headers, :topic], :message=>"%{value} needs to be :fanout, :direct, :headers, :topic"}, allow_nil: true

        # @return [:yes, :no, nil] if the exchange should delete itself after all queues/exchanges unbound from it
        attribute :auto_delete
        validates :auto_delete, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] exchange is available only for other exchanges
        attribute :internal
        validates :internal, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Hash, nil] extra arguments for exchange. If defined this argument is a key/value dictionary
        attribute :arguments
        validates :arguments, type: Hash
      end
    end
  end
end
