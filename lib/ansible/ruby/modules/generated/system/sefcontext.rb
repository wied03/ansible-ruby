# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages SELinux file context mapping definitions.
      # Similar to the C(semanage fcontext) command.
      class Sefcontext < Base
        # @return [String] Target path (expression).
        attribute :target
        validates :target, presence: true, type: String

        # @return [String, nil] File type.,The following file type options can be passed; C(a) for all files, C(b) for block devices, C(c) for character devices, C(d) for directories, C(f) for regular files, C(l) for symbolic links, C(p) for named pipes, C(s) for socket files.
        attribute :ftype
        validates :ftype, type: String

        # @return [String] SELinux type for the specified target.
        attribute :setype
        validates :setype, presence: true, type: String

        # @return [Object, nil] SELinux user for the specified target.
        attribute :seuser

        # @return [Object, nil] SELinux range for the specified target.
        attribute :selevel

        # @return [:absent, :present, nil] Whether the SELinux file context must be C(absent) or C(present).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Reload SELinux policy after commit.,Note that this does not apply SELinux file contexts to existing files.
        attribute :reload
        validates :reload, type: String
      end
    end
  end
end
