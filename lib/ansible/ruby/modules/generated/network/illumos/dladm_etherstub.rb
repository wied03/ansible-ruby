# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or delete etherstubs on Solaris/illumos systems.
      class Dladm_etherstub < Base
        # @return [String] Etherstub name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Symbol, nil] Specifies that the etherstub is temporary. Temporary etherstubs do not persist across reboots.
        attribute :temporary
        validates :temporary, type: Symbol

        # @return [:present, :absent, nil] Create or delete Solaris/illumos etherstub.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
