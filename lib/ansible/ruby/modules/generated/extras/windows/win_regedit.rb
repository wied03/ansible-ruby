# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_regedit < Base
        # @return [Object] Name of Registry Key
        attribute :key
        validates :key, presence: true

        # @return [Object] Name of Registry Value
        attribute :value
        validates :value, presence: true

        # @return [Object] Registry Value Data.  Binary data should be expressed a yaml byte array or as comma separated hex values.  An easy way to generate this is to run C(regedit.exe) and use the I(Export) option to save the registry values to a file.  In the exported file binary values will look like C(hex:be,ef,be,ef).  The C(hex:) prefix is optional.
        attribute :data

        # @return [:binary, :dword, :expandstring, :multistring, :string, :qword, nil] Registry Value Data Type
        attribute :datatype
        validates :datatype, inclusion: {:in=>[:binary, :dword, :expandstring, :multistring, :string, :qword], :message=>"%{value} needs to be :binary, :dword, :expandstring, :multistring, :string, :qword"}, allow_nil: true

        # @return [:present, :absent, nil] State of Registry Value
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
