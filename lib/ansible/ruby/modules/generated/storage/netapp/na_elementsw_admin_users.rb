# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update admin users on SolidFire
      class Na_elementsw_admin_users < Base
        # @return [:present, :absent] Whether the specified account should exist or not.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Unique username for this account. (May be 1 to 64 characters in length).
        attribute :element_username
        validates :element_username, presence: true, type: String

        # @return [String, nil] The password for the new admin account. Setting the password attribute will always reset your password, even if the password is the same
        attribute :element_password
        validates :element_password, type: String

        # @return [Symbol, nil] Boolean, true for accepting Eula, False Eula
        attribute :acceptEula
        validates :acceptEula, type: Symbol

        # @return [Array<String>, String, nil] A list of type the admin has access to
        attribute :access
        validates :access, type: TypeGeneric.new(String)
      end
    end
  end
end
