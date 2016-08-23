# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rabbitmq_policy < Base
        # @return [String] The name of the policy to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The name of the vhost to apply to.
        attribute :vhost
        validates :vhost, type: String

        # @return [:all, :exchanges, :queues, nil] What the policy applies to. Requires RabbitMQ 3.2.0 or later.
        attribute :apply_to
        validates :apply_to, inclusion: {:in=>[:all, :exchanges, :queues], :message=>"%{value} needs to be :all, :exchanges, :queues"}, allow_nil: true

        # @return [String] A regex of queues to apply the policy to.
        attribute :pattern
        validates :pattern, presence: true, type: String

        # @return [String] A dict or string describing the policy.
        attribute :tags
        validates :tags, presence: true, type: String

        # @return [Integer, nil] The priority of the policy.
        attribute :priority
        validates :priority, type: Integer

        # @return [String, nil] Erlang node name of the rabbit we wish to configure.
        attribute :node
        validates :node, type: String

        # @return [:present, :absent, nil] The state of the policy.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
