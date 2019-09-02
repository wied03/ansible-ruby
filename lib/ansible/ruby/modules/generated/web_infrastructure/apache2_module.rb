# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enables or disables a specified module of the Apache2 webserver.
      class Apache2_module < Base
        # @return [String] Name of the module to enable/disable as given to C(a2enmod/a2dismod).
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Identifier of the module as listed by C(apache2ctl -M). This is optional and usually determined automatically by the common convention of appending C(_module) to I(name) as well as custom exception for popular modules.
        attribute :identifier
        validates :identifier, type: String

        # @return [Symbol, nil] Force disabling of default modules and override Debian warnings.
        attribute :force
        validates :force, type: Symbol

        # @return [:present, :absent, nil] Desired state of the module.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] Ignore configuration checks about inconsistent module configuration. Especially for mpm_* modules.
        attribute :ignore_configcheck
        validates :ignore_configcheck, type: Symbol
      end
    end
  end
end
