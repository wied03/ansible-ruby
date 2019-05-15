# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows you to gather various information about ONTAP configuration
      class Na_ontap_gather_facts < Base
        # @return [:info, nil] Returns "info"
        attribute :state
        validates :state, inclusion: {:in=>[:info], :message=>"%{value} needs to be :info"}, allow_nil: true
      end
    end
  end
end
