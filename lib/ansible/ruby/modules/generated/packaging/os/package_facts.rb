# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Return information about installed packages as facts
      class Package_facts < Base
        # @return [:auto, :rpm, :apt, nil] The package manager used by the system so we can query the package information
        attribute :manager
        validates :manager, inclusion: {:in=>[:auto, :rpm, :apt], :message=>"%{value} needs to be :auto, :rpm, :apt"}, allow_nil: true
      end
    end
  end
end
