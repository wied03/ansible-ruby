# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts about one or more oVirt quotas.
      class Ovirt_quotas_facts < Base
        # @return [String] Name of the datacenter where quota resides.
        attribute :data_center
        validates :data_center, presence: true, type: String

        # @return [String, nil] Name of the quota, can be used as glob expression.
        attribute :name
        validates :name, type: String
      end
    end
  end
end
