# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove mailboxes on a Webfaction account. Further documentation at http://github.com/quentinsf/ansible-webfaction.
      class Webfaction_mailbox < Base
        # @return [String] The name of the mailbox
        attribute :mailbox_name
        validates :mailbox_name, presence: true, type: String

        # @return [String] The password for the mailbox
        attribute :mailbox_password
        validates :mailbox_password, presence: true, type: String

        # @return [:present, :absent, nil] Whether the mailbox should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The webfaction account to use
        attribute :login_name
        validates :login_name, presence: true, type: String

        # @return [String] The webfaction password to use
        attribute :login_password
        validates :login_password, presence: true, type: String
      end
    end
  end
end
