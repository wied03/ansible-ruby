# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_instance_facts < Base
        # @return [String] Name or display name of the instance.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Domain the instance is related to.
        attribute :domain

        # @return [Object, nil] Account the instance is related to.
        attribute :account

        # @return [Object, nil] Project the instance is related to.
        attribute :project
      end
    end
  end
end
