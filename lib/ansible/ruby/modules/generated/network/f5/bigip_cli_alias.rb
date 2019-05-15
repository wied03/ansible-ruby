# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows for managing both private and shared aliases on a BIG-IP.
      class Bigip_cli_alias < Base
        # @return [String] Specifies the name of the alias.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:private, :shared, nil] The scope of the alias; whether it is shared on the system, or usable only for the user who created it.
        attribute :scope
        validates :scope, inclusion: {:in=>[:private, :shared], :message=>"%{value} needs to be :private, :shared"}, allow_nil: true

        # @return [String, nil] The command to alias.
        attribute :command
        validates :command, type: String

        # @return [Object, nil] Description of the alias.
        attribute :description

        # @return [String, nil] Device partition to manage resources on.,This parameter is disregarded when the C(scope) is C(private).
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
