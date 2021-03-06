# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Change dpkg package selection state via --get-selections and --set-selections.
      class Dpkg_selections < Base
        # @return [String] Name of the package
        attribute :name
        validates :name, presence: true, type: String

        # @return [:install, :hold, :deinstall, :purge] The selection state to set the package to.
        attribute :selection
        validates :selection, presence: true, expression_inclusion: {:in=>[:install, :hold, :deinstall, :purge], :message=>"%{value} needs to be :install, :hold, :deinstall, :purge"}
      end
    end
  end
end
