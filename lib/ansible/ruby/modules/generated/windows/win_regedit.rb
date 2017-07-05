# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify or remove registry keys and values.
      # More information about the windows registry from Wikipedia (https://en.wikipedia.org/wiki/Windows_Registry).
      class Win_regedit < Base
        # @return [String] Name of registry path.,Should be in one of the following registry hives: HKCC, HKCR, HKCU, HKLM, HKU.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] Name of registry entry in C(path).,This is an entry in the above C(key) parameter.,If not provided, or empty we use the default name '(default)'
        attribute :name
        validates :name, type: String

        # @return [Integer, Array<String>, String, nil] Value of the registry entry C(name) in C(path).,Binary data should be expressed a yaml byte array or as comma separated hex values.  An easy way to generate this is to run C(regedit.exe) and use the I(Export) option to save the registry values to a file.  In the exported file binary values will look like C(hex:be,ef,be,ef).  The C(hex:) prefix is optional.
        attribute :data
        validates :data, type: TypeGeneric.new(String, Integer)

        # @return [:binary, :dword, :expandstring, :multistring, :string, :qword, nil] Registry value data type.
        attribute :type
        validates :type, inclusion: {:in=>[:binary, :dword, :expandstring, :multistring, :string, :qword], :message=>"%{value} needs to be :binary, :dword, :expandstring, :multistring, :string, :qword"}, allow_nil: true

        # @return [:present, :absent, nil] State of registry entry.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
