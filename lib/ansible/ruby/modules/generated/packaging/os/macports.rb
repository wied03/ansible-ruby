# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages MacPorts packages (ports)
      class Macports < Base
        # @return [String] A list of port names.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, :active, :inactive, nil] Indicates the desired state of the port.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :active, :inactive], :message=>"%{value} needs to be :present, :absent, :active, :inactive"}, allow_nil: true

        # @return [:yes, :no, nil] Update the ports tree first.
        attribute :update_ports
        validates :update_ports, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] A port variant specification.,C(variant) is only supported with state: I(installed)/I(present).
        attribute :variant
        validates :variant, type: String
      end
    end
  end
end
