# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures storage profiles on Cisco UCS Manager.
      # Examples can be used with the L(UCS Platform Emulator,https://communities.cisco.com/ucspe).
      class Ucs_storage_profile < Base
        # @return [:absent, :present, nil] If C(present), will verify that the storage profile is present and will create if needed.,If C(absent), will verify that the storage profile is absent and will delete if needed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] The name of the storage profile.,This name can be between 1 and 16 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after profile is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The user-defined description of the storage profile.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :description

        # @return [Array<Hash>, Hash, nil] List of Local LUNs used by the storage profile.
        attribute :local_luns
        validates :local_luns, type: TypeGeneric.new(Hash)

        # @return [String, nil] The distinguished name (dn) of the organization where the resource is assigned.
        attribute :org_dn
        validates :org_dn, type: String
      end
    end
  end
end
