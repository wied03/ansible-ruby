# frozen_string_literal: true
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

        # @return [:yes, :no, nil] Setting this flag causes the broker to retain (i.e. keep) the message so that applications that subsequently subscribe to the topic can received the last retained message immediately.
        attribute :retain
        validates :retain, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The path to the Certificate Authority certificate files that are to be treated as trusted by this client. If this is the only option given then the client will operate in a similar manner to a web browser. That is to say it will require the broker to have a certificate signed by the Certificate Authorities in ca_certs and will communicate using TLS v1, but will not attempt any form of authentication. This provides basic network encryption but may not be sufficient depending on how the broker is configured.
        attribute :ca_certs

        # @return [Object, nil] The path pointing to the PEM encoded client certificate. If this is not None it will be used as client information for TLS based authentication. Support for this feature is broker dependent.
        attribute :certfile

        # @return [Object, nil] The path pointing to the PEM encoded client private key. If this is not None it will be used as client information for TLS based authentication. Support for this feature is broker dependent.
        attribute :keyfile
      end
    end
  end
end
