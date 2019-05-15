# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Trigger a graceful removal or insertion (GIR) of the switch.
      class Nxos_gir < Base
        # @return [TrueClass, FalseClass, nil] When C(system_mode_maintenance=true) it puts all enabled protocols in maintenance mode (using the isolate command). When C(system_mode_maintenance=false) it puts all enabled protocols in normal mode (using the no isolate command).
        attribute :system_mode_maintenance
        validates :system_mode_maintenance, type: MultipleTypes.new(TrueClass, FalseClass)

        # @return [Object, nil] When C(system_mode_maintenance_dont_generate_profile=true) it prevents the dynamic searching of enabled protocols and executes commands configured in a maintenance-mode profile. Use this option if you want the system to use a maintenance-mode profile that you have created. When C(system_mode_maintenance_dont_generate_profile=false) it prevents the dynamic searching of enabled protocols and executes commands configured in a normal-mode profile. Use this option if you want the system to use a normal-mode profile that you have created.
        attribute :system_mode_maintenance_dont_generate_profile

        # @return [Integer, nil] Keeps the switch in maintenance mode for a specified number of minutes. Range is 5-65535.
        attribute :system_mode_maintenance_timeout
        validates :system_mode_maintenance_timeout, type: Integer

        # @return [Object, nil] Shuts down all protocols, vPC domains, and interfaces except the management interface (using the shutdown command). This option is disruptive while C(system_mode_maintenance) (which uses the isolate command) is not.
        attribute :system_mode_maintenance_shutdown

        # @return [:hw_error, :svc_failure, :kern_failure, :wdog_timeout, :fatal_error, :lc_failure, :match_any, :manual_reload, :any_other, :maintenance, nil] Boots the switch into maintenance mode automatically in the event of a specified system crash. Note that not all reset reasons are applicable for all platforms. Also if reset reason is set to match_any, it is not idempotent as it turns on all reset reasons. If reset reason is match_any and state is absent, it turns off all the reset reasons.
        attribute :system_mode_maintenance_on_reload_reset_reason
        validates :system_mode_maintenance_on_reload_reset_reason, inclusion: {:in=>[:hw_error, :svc_failure, :kern_failure, :wdog_timeout, :fatal_error, :lc_failure, :match_any, :manual_reload, :any_other, :maintenance], :message=>"%{value} needs to be :hw_error, :svc_failure, :kern_failure, :wdog_timeout, :fatal_error, :lc_failure, :match_any, :manual_reload, :any_other, :maintenance"}, allow_nil: true

        # @return [:present, :absent] Specify desired state of the resource.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}
      end
    end
  end
end
