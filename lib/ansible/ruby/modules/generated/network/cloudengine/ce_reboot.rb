# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Reboot a HUAWEI CloudEngine switches.
      class Ce_reboot < Base
        # @return [Symbol, nil] Safeguard boolean. Set to true if you're sure you want to reboot.
        attribute :confirm
        validates :confirm, type: Symbol

        # @return [Symbol, nil] Flag indicating whether to save the configuration.
        attribute :save_config
        validates :save_config, type: Symbol
      end
    end
  end
end
