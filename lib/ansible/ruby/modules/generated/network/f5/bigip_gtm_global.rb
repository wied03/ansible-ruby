# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages global GTM settings. These settings include general, load balancing, and metrics related settings.
      class Bigip_gtm_global < Base
        # @return [Symbol, nil] Specifies whether this system is a member of a synchronization group.,When you enable synchronization, the system periodically queries other systems in the synchronization group to obtain and distribute configuration and metrics collection updates.,The synchronization group may contain systems configured as Global Traffic Manager and Link Controller systems.
        attribute :synchronization
        validates :synchronization, type: Symbol

        # @return [String, nil] Specifies the name of the synchronization group to which the system belongs.
        attribute :synchronization_group_name
        validates :synchronization_group_name, type: String

        # @return [Symbol, nil] Specifies that the system synchronizes Domain Name System (DNS) zone files among the synchronization group members.
        attribute :synchronize_zone_files
        validates :synchronize_zone_files, type: Symbol
      end
    end
  end
end
