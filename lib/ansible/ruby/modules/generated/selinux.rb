# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Selinux < Base
        # @return [String] name of the SELinux policy to use (example: C(targeted)) will be required if state is not C(disabled)
        attribute :policy
        validates :policy, type: String

        # @return [String] The SELinux mode
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:enforcing, :permissive, :disabled], :message=>"%{value} needs to be :enforcing, :permissive, :disabled"}

        # @return [String] path to the SELinux configuration file, if non-standard
        attribute :conf
        validates :conf, type: String
      end
    end
  end
end
