# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Wraps the reg.exe command to import the contents of a registry file.
      # Suitable for use with registry files created using M(win_template).
      # Windows registry files have a specific format and must be constructed correctly with carriage return and line feed line endings otherwise they will not be merged.
      # Exported registry files often start with a Byte Order Mark which must be removed if the file is to templated using M(win_template).
      # Registry file format is described at U(https://support.microsoft.com/en-us/kb/310516)
      # See also M(win_template), M(win_regedit)
      class Win_regmerge < Base
        # @return [String] The full path including file name to the registry file on the remote machine to be merged
        attribute :path
        validates :path, presence: true, type: String

        # @return [Object, nil] The parent key to use when comparing the contents of the registry to the contents of the file.  Needs to be in HKLM or HKCU part of registry. Use a PS-Drive style path for example HKLM:\SOFTWARE not HKEY_LOCAL_MACHINE\SOFTWARE If not supplied, or the registry key is not found, no comparison will be made, and the module will report changed.
        attribute :compare_key
      end
    end
  end
end
