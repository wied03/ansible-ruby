# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures the SELinux mode and policy. A reboot may be required after usage. Ansible will not issue this reboot but will let you know when it is required.
      class Selinux < Base
        # @return [String, nil] name of the SELinux policy to use (example: C(targeted)) will be required if state is not C(disabled)
        attribute :policy
        validates :policy, type: String

        # @return [:enforcing, :permissive, :disabled] The SELinux mode
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enforcing, :permissive, :disabled], :message=>"%{value} needs to be :enforcing, :permissive, :disabled"}

        # @return [String, nil] path to the SELinux configuration file, if non-standard
        attribute :conf
        validates :conf, type: String
      end
    end
  end
end
