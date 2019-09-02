# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module creates, deletes or modifies hosts on Infinibox.
      class Infini_host < Base
        # @return [String] Host Name
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Creates/Modifies Host when present or removes when absent
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] List of wwns of the host
        attribute :wwns
        validates :wwns, type: TypeGeneric.new(String)

        # @return [String, nil] Volume name to map to the host
        attribute :volume
        validates :volume, type: String
      end
    end
  end
end
