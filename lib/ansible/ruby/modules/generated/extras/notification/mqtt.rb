# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Publish a message on an MQTT topic.
      class Mqtt < Base
        # @return [String, nil] MQTT broker address/name
        attribute :server
        validates :server, type: String

        # @return [Integer, nil] MQTT broker port number
        attribute :port
        validates :port, type: Integer

        # @return [Object, nil] Username to authenticate against the broker.
        attribute :username

        # @return [Object, nil] Password for C(username) to authenticate against the broker.
        attribute :password

        # @return [String, nil] MQTT client identifier
        attribute :client_id
        validates :client_id, type: String

        # @return [String] MQTT topic name
        attribute :topic
        validates :topic, presence: true, type: String

        # @return [String] Payload. The special string C("None") may be used to send a NULL (i.e. empty) payload which is useful to simply notify with the I(topic) or to clear previously retained messages.
        attribute :payload
        validates :payload, presence: true, type: String

        # @return [0, 1, 2, nil] QoS (Quality of Service)
        attribute :qos
        validates :qos, inclusion: {:in=>[0, 1, 2], :message=>"%{value} needs to be 0, 1, 2"}, allow_nil: true

        # @return [Boolean, nil] Setting this flag causes the broker to retain (i.e. keep) the message so that applications that subsequently subscribe to the topic can received the last retained message immediately.
        attribute :retain
        validates :retain, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
