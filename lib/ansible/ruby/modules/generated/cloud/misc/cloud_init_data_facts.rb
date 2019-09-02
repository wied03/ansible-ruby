# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gathers facts by reading the status.json and result.json of cloud-init.
      class Cloud_init_data_facts < Base
        # @return [:status, :result, nil] Filter facts
        attribute :filter
        validates :filter, expression_inclusion: {:in=>[:status, :result], :message=>"%{value} needs to be :status, :result"}, allow_nil: true
      end
    end
  end
end
