# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Collect facts from F5 BIG-IP GTM devices.
      class Bigip_gtm_facts < Base
        # @return [:pool, :wide_ip, :virtual_server] Fact category to collect
        attribute :include
        validates :include, presence: true, inclusion: {:in=>[:pool, :wide_ip, :virtual_server], :message=>"%{value} needs to be :pool, :wide_ip, :virtual_server"}

        # @return [String, nil] Perform regex filter of response. Filtering is done on the name of the resource. Valid filters are anything that can be provided to Python's C(re) module.
        attribute :filter
        validates :filter, type: String
      end
    end
  end
end
