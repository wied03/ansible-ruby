# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify or remove registry keys and values.
      # More information about the windows registry from Wikipedia U(https://en.wikipedia.org/wiki/Windows_Registry).
      class Win_regedit < Base
        # @return [String] Name of the registry path.,Should be in one of the following registry hives: HKCC, HKCR, HKCU, HKLM, HKU.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] Name of the registry entry in the above C(path) parameters.,If not provided, or empty then the '(Default)' property for the key will be used.
        attribute :name
        validates :name, type: String

        # @return [Integer, Array<String>, String, nil] Value of the registry entry C(name) in C(path).,If not specified then the value for the property will be null for the corresponding C(type).,Binary and None data should be expressed in a yaml byte array or as comma separated hex values.,An easy way to generate this is to run C(regedit.exe) and use the I(export) option to save the registry values to a file.,In the exported file, binary value will look like C(hex:be,ef,be,ef), the C(hex:) prefix is optional.,DWORD and QWORD values should either be represented as a decimal number or a hex value.,Multistring values should be passed in as a list.,See the examples for more details on how to format this data.
        attribute :data
        validates :data, type: TypeGeneric.new(String, Integer)

        # @return [:binary, :dword, :expandstring, :multistring, :string, :qword, nil] The registry value data type.
        attribute :type
        validates :type, inclusion: {:in=>[:binary, :dword, :expandstring, :multistring, :string, :qword], :message=>"%{value} needs to be :binary, :dword, :expandstring, :multistring, :string, :qword"}, allow_nil: true

        # @return [:absent, :present, nil] The state of the registry entry.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] When C(state) is 'absent' then this will delete the entire key.,If C(no) then it will only clear out the '(Default)' property for that key.
        attribute :delete_key
        validates :delete_key, type: String

        # @return [String, nil] A path to a hive key like C:\Users\Default\NTUSER.DAT to load in the registry.,This hive is loaded under the HKLM:\ANSIBLE key which can then be used in I(name) like any other path.,This can be used to load the default user profile registry hive or any other hive saved as a file.,Using this function requires the user to have the C(SeRestorePrivilege) and C(SeBackupPrivilege) privileges enabled.
        attribute :hive
        validates :hive, type: String
      end
    end
  end
end
