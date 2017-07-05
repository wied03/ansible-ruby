# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage PHP packages with the pear package manager.
      class Pear < Base
        # @return [Array<String>, String] Name of the package to install, upgrade, or remove.
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, :latest, nil] Desired state of the package.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true
      end
    end
  end
end
