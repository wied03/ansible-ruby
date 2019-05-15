# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get facts of Auto Scale Setting.
      class Azure_rm_autoscale_facts < Base
        # @return [String] The name of the resource group.
        attribute :resource_group
        validates :resource_group, presence: true, type: String

        # @return [String, nil] The name of the Auto Scale Setting.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
