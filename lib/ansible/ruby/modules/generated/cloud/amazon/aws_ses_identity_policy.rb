# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows the user to manage sending authorization policies associated with an SES identity (email or domain).
      # SES authorization sending policies can be used to control what actors are able to send email on behalf of the validated identity and what conditions must be met by the sent emails.
      class Aws_ses_identity_policy < Base
        # @return [String] The SES identity to attach or remove a policy from. This can be either the full ARN or just\r\nthe verified email or domain.\r\n
        attribute :identity
        validates :identity, presence: true, type: String

        # @return [String] The name used to identify the policy within the scope of the identity it's attached to.
        attribute :policy_name
        validates :policy_name, presence: true, type: String

        # @return [String, nil] A properly formated JSON sending authorization policy. Required when I(state=present).
        attribute :policy
        validates :policy, type: String

        # @return [:present, :absent, nil] Whether to create(or update) or delete the authorization policy on the identity.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
