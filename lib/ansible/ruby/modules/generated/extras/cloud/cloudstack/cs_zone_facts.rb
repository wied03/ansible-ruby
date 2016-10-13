# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gathering facts from the API of a zone.
      class Cs_zone_facts < Base
        # @return [String] Name of the zone.
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
