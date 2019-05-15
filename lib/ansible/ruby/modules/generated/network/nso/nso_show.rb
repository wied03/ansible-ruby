# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module provides support for displaying data from Cisco NSO.
      class Nso_show < Base
        # @return [String] Path to NSO data.
        attribute :path
        validates :path, presence: true, type: String

        # @return [Boolean, nil] Controls whether or not operational data is included in the result.\r\n
        attribute :operational
        validates :operational, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
