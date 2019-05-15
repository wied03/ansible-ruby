# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Load configuration on PAN-OS device
      class Panos_loadcfg < Base
        # @return [String, nil] configuration file to load
        attribute :file
        validates :file, type: String

        # @return [String, nil] commit if changed
        attribute :commit
        validates :commit, type: String
      end
    end
  end
end
