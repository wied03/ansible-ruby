# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mqtt < Base
        # @return [String] MQTT broker address/name
        attribute :server
        validates :server, type: String

        # @return [Fixnum] MQTT broker port number
        attribute :port
        validates :port, type: Fixnum

        # @return [Object] Username to authenticate against the broker.
        attribute :username

        # @return [Object] Password for C(username) to authenticate against the broker.
        attribute :password

        # @return [String] MQTT client identifier
        attribute :client_id
        validates :client_id, type: String

        # @return [String] MQTT topic name
        attribute :topic
        validates :topic, presence: true, type: String

        # @return [String] Payload. The special string C("None") may be used to send a NULL (i.e. empty) payload which is useful to simply notify with the I(topic) or to clear previously retained messages.
        attribute :payload
        validates :payload, presence: true, type: String

        # @return [Fixnum] QoS (Quality of Service)
        attribute :qos
        validates :qos, inclusion: {:in=>[:"0", :"1", :"2"], :message=>"%{value} needs to be :\"0\", :\"1\", :\"2\""}, allow_nil: true

        # @return [String] Setting this flag causes the broker to retain (i.e. keep) the message so that applications that subsequently subscribe to the topic can received the last retained message immediately.
        attribute :retain
        validates :retain, type: String
      end
    end
  end
end
