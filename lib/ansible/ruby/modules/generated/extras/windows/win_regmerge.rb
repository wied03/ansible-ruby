# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_regmerge < Base
        # @return [String] The full path including file name to the registry file on the remote machine to be merged
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] The parent key to use when comparing the contents of the registry to the contents of the file.  Needs to be in HKLM or HKCU part of registry.  Use a PS-Drive style path for example HKLM:\SOFTWARE not HKEY_LOCAL_MACHINE\SOFTWARE If not supplied, or the registry key is not found, no comparison will be made, and the module will report changed.
        attribute :compare_key
        validates :compare_key, type: String
      end
    end
  end
end
