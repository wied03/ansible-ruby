# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rabbitmq_parameter < Base
        # @return [String] Name of the component of which the parameter is being set
        attribute :component
        validates :component, presence: true, type: String

        # @return [String] Name of the parameter being set
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Value of the parameter, as a JSON term
        attribute :value
        validates :value, type: String

        # @return [String] vhost to apply access privileges.
        attribute :vhost
        validates :vhost, type: String

        # @return [String] erlang node name of the rabbit we wish to configure
        attribute :node
        validates :node, type: String

        # @return [String] Specify if user is to be added or removed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
