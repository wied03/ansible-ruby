# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides support for managing configuration in Cisco NSO and can also ensure services are in sync.
      class Nso_config < Base
        # @return [Hash] NSO data in format as | display json converted to YAML. List entries can be annotated with a __state entry. Set to in-sync/deep-in-sync for services to verify service is in sync with the network. Set to absent in list entries to ensure they are deleted if they exist in NSO.\r\n
        attribute :data
        validates :data, presence: true, type: Hash
      end
    end
  end
end
