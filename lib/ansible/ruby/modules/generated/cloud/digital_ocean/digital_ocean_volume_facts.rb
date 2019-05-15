# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module can be used to gather facts about DigitalOcean provided volumes.
      class Digital_ocean_volume_facts < Base
        # @return [String, nil] Name of region to restrict results to volumes available in a specific region.,Please use M(digital_ocean_region_facts) for getting valid values related regions.
        attribute :region_name
        validates :region_name, type: String
      end
    end
  end
end
