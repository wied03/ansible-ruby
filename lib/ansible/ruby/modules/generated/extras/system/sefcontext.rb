# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SELinux file context mapping definitions
      # Similar to the C(semanage fcontext) command
      class Sefcontext < Base
        # @return [String] Target path (expression).
        attribute :target
        validates :target, presence: true, type: String

        # @return [String, nil] File type.
        attribute :ftype
        validates :ftype, type: String

        # @return [String] SELinux type for the specified target.
        attribute :setype
        validates :setype, presence: true, type: String

        # @return [Object, nil] SELinux user for the specified target.
        attribute :seuser

        # @return [Object, nil] SELinux range for the specified target.
        attribute :selevel

        # @return [:present, :absent, nil] Desired boolean value.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Reload SELinux policy after commit.
        attribute :reload
        validates :reload, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
