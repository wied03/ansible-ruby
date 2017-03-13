# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete, enable or disable IP interfaces on Solaris/illumos systems.
      class Ipadm_if < Base
        # @return [Object] IP interface name.
        attribute :name
        validates :name, presence: true

        # @return [Boolean, nil] Specifies that the IP interface is temporary. Temporary IP interfaces do not persist across reboots.
        attribute :temporary
        validates :temporary, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:present, :absent, :enabled, :disabled, nil] Create or delete Solaris/illumos IP interfaces.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
