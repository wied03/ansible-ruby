# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gather facts from ZFS pool properties.
      class Zpool_facts < Base
        # @return [Object, nil] ZFS pool name.
        attribute :name

        # @return [Boolean, nil] Specifies if property values should be displayed in machine friendly format.
        attribute :parsable
        validates :parsable, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Specifies which dataset properties should be queried in comma-separated format. For more information about dataset properties, check zpool(1M) man page.
        attribute :properties
        validates :properties, type: String
      end
    end
  end
end
