# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Retrieve facts from AWS Elasticache clusters
      class Elasticache_facts < Base
        # @return [String, nil] The name of an Elasticache cluster
        attribute :name
        validates :name, type: String
      end
    end
  end
end
