# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enable or Disable Windows Firewall profiles.
      class Win_firewall < Base
        # @return [:Domain, :Private, :Public, nil] Specify one or more profiles to change.
        attribute :profiles
        validates :profiles, inclusion: {:in=>[:Domain, :Private, :Public], :message=>"%{value} needs to be :Domain, :Private, :Public"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Set state of firewall for given profile.
        attribute :state
        validates :state, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
