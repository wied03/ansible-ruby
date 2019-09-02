# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows you to modify mapped network drives for individual users.
      class Win_mapped_drive < Base
        # @return [String] The letter of the network path to map to.,This letter must not already be in use with Windows.
        attribute :letter
        validates :letter, presence: true, type: String

        # @return [String, nil] The password for C(username).
        attribute :password
        validates :password, type: String

        # @return [String, nil] The UNC path to map the drive to.,This is required if C(state=present).,If C(state=absent) and path is not set, the module will delete the mapped drive regardless of the target.,If C(state=absent) and the path is set, the module will throw an error if path does not match the target of the mapped drive.
        attribute :path
        validates :path, type: String

        # @return [:absent, :present, nil] If C(present) will ensure the mapped drive exists.,If C(absent) will ensure the mapped drive does not exist.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Credentials to map the drive with.,The username MUST include the domain or servername like SERVER\user, see the example for more information.
        attribute :username
        validates :username, type: String
      end
    end
  end
end
