# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages log publishers on a BIG-IP.
      class Bigip_log_publisher < Base
        # @return [String] Specifies the name of the log publisher.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Specifies a description for the log publisher.
        attribute :description

        # @return [Array<String>, String, nil] Specifies log destinations for this log publisher to use.
        attribute :destinations
        validates :destinations, type: TypeGeneric.new(String)

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the resource exists.,When C(absent), ensures the resource is removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
