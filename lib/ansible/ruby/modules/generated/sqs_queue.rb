# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Sqs_queue < Base
        # @return [String] Create or delete the queue
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name of the queue.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Fixnum] The default visibility timeout in seconds.
        attribute :default_visibility_timeout
        validates :default_visibility_timeout, type: Fixnum

        # @return [Fixnum] The message retention period in seconds.
        attribute :message_retention_period
        validates :message_retention_period, type: Fixnum

        # @return [Fixnum] The maximum message size in bytes.
        attribute :maximum_message_size
        validates :maximum_message_size, type: Fixnum

        # @return [Fixnum] The delivery delay in seconds.
        attribute :delivery_delay
        validates :delivery_delay, type: Fixnum

        # @return [Fixnum] The receive message wait time in seconds.
        attribute :receive_message_wait_time
        validates :receive_message_wait_time, type: Fixnum

        # @return [String] The json dict policy to attach to queue
        attribute :policy
        validates :policy, type: String
      end
    end
  end
end
