# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module uses rabbitMQ Rest API to create/delete bindings
      class Rabbitmq_binding < Base
        # @return [:present, :absent, nil] Whether the exchange should be present or absent,Only present implemented atm
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] source exchange to create binding on
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] rabbitMQ user for connection
        attribute :login_user
        validates :login_user, type: String

        # @return [Boolean, nil] rabbitMQ password for connection
        attribute :login_password
        validates :login_password, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] rabbitMQ host for connection
        attribute :login_host
        validates :login_host, type: String

        # @return [Integer, nil] rabbitMQ management api port
        attribute :login_port
        validates :login_port, type: Integer

        # @return [String, nil] rabbitMQ virtual host,default vhost is /
        attribute :vhost
        validates :vhost, type: String

        # @return [String] destination exchange or queue for the binding
        attribute :destination
        validates :destination, presence: true, type: String

        # @return [:queue, :exchange] Either queue or exchange
        attribute :destination_type
        validates :destination_type, presence: true, inclusion: {:in=>[:queue, :exchange], :message=>"%{value} needs to be :queue, :exchange"}

        # @return [String, nil] routing key for the binding,default is
        attribute :routing_key
        validates :routing_key, type: String

        # @return [Object, nil] extra arguments for exchange. If defined this argument is a key/value dictionary
        attribute :arguments
      end
    end
  end
end
