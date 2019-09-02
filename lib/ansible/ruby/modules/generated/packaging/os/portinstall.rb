# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage packages for FreeBSD using 'portinstall'.
      class Portinstall < Base
        # @return [Array<String>, String] name of package to install/remove
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] state of the package
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] use packages instead of ports whenever available
        attribute :use_packages
        validates :use_packages, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
