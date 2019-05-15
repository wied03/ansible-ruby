# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gathering facts from the API of a zone.
      # Sets Ansible facts accessable by the key C(cloudstack_zone) and since version 2.6 also returns results.
      class Cs_zone_facts < Base
        # @return [String] Name of the zone.
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
