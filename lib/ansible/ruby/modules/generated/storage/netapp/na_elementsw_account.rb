# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, destroy, or update accounts on Element SW
      class Na_elementsw_account < Base
        # @return [:present, :absent] Whether the specified account should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] Unique username for this account. (May be 1 to 64 characters in length).
        attribute :element_username
        validates :element_username, presence: true, type: String

        # @return [String, nil] New name for the user account.
        attribute :new_element_username
        validates :new_element_username, type: String

        # @return [Object, nil] CHAP secret to use for the initiator. Should be 12-16 characters long and impenetrable.,The CHAP initiator secrets must be unique and cannot be the same as the target CHAP secret.,If not specified, a random secret is created.
        attribute :initiator_secret

        # @return [Object, nil] CHAP secret to use for the target (mutual CHAP authentication).,Should be 12-16 characters long and impenetrable.,The CHAP target secrets must be unique and cannot be the same as the initiator CHAP secret.,If not specified, a random secret is created.
        attribute :target_secret

        # @return [Object, nil] List of Name/Value pairs in JSON object format.
        attribute :attributes

        # @return [Object, nil] The ID of the account to manage or update.
        attribute :account_id

        # @return [Object, nil] Status of the account.
        attribute :status
      end
    end
  end
end
