# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configures server UUID pools and UUID blocks on Cisco UCS Manager.
      # Examples can be used with the L(UCS Platform Emulator,https://communities.cisco.com/ucspe).
      class Ucs_uuid_pool < Base
        # @return [:present, :absent, nil] If C(present), will verify UUID pool is present and will create if needed.,If C(absent), will verify UUID pool is absent and will delete if needed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the UUID pool.,This name can be between 1 and 32 alphanumeric characters.,You cannot use spaces or any special characters other than - (hyphen), "_" (underscore), : (colon), and . (period).,You cannot change this name after the UUID pool is created.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The user-defined description of the UUID pool.,Enter up to 256 characters.,You can use any characters or spaces except the following:,` (accent mark),  (backslash), ^ (carat), " (double quote), = (equal sign), > (greater than), < (less than), or ' (single quote).
        attribute :description

        # @return [Object, nil] UUID prefix used for the range of server UUIDs.,If no value is provided, the system derived prefix will be used (equivalent to selecting 'derived' option in UI).,If the user provides a value, the user provided prefix will be used (equivalent to selecting 'other' option in UI).,A user provided value should be in the format XXXXXXXX-XXXX-XXXX.
        attribute :prefix

        # @return [:default, :sequential, nil] The Assignment Order field.,This can be one of the following:,default - Cisco UCS Manager selects a random identity from the pool.,sequential - Cisco UCS Manager selects the lowest available identity from the pool.
        attribute :order
        validates :order, inclusion: {:in=>[:default, :sequential], :message=>"%{value} needs to be :default, :sequential"}, allow_nil: true

        # @return [String, nil] The first UUID in the block of UUIDs.,This is the From field in the UCS Manager UUID Blocks menu.
        attribute :first_uuid
        validates :first_uuid, type: String

        # @return [String, nil] The last UUID in the block of UUIDs.,This is the To field in the UCS Manager Add UUID Blocks menu.
        attribute :last_uuid
        validates :last_uuid, type: String

        # @return [String, nil] The distinguished name (dn) of the organization where the resource is assigned.
        attribute :org_dn
        validates :org_dn, type: String
      end
    end
  end
end
