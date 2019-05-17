# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows to create, modify or delete accounts with a CA supporting the L(ACME protocol,https://tools.ietf.org/html/draft-ietf-acme-acme-14), such as L(Let's Encrypt,https://letsencrypt.org/).
      # This module only works with the ACME v2 protocol.
      class Acme_account < Base
        # @return [:present, :absent, :changed_key] The state of the account, to be identified by its account key.,If the state is C(absent), the account will either not exist or be deactivated.,If the state is C(changed_key), the account must exist. The account key will be changed; no other information will be touched.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent, :changed_key], :message=>"%{value} needs to be :present, :absent, :changed_key"}

        # @return [Boolean, nil] Whether account creation is allowed (when state is C(present)).
        attribute :allow_creation
        validates :allow_creation, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] A list of contact URLs.,Email addresses must be prefixed with C(mailto:).,See https://tools.ietf.org/html/draft-ietf-acme-acme-14#section-7.1.2 for what is allowed.,Must be specified when state is C(present). Will be ignored if state is C(absent) or C(changed_key).
        attribute :contact

        # @return [Symbol, nil] Boolean indicating whether you agree to the terms of service document.,ACME servers can require this to be true.
        attribute :terms_agreed
        validates :terms_agreed, type: Symbol

        # @return [Object, nil] Path to a file containing the ACME account RSA or Elliptic Curve key to change to.,Same restrictions apply as to C(account_key_src).,Mutually exclusive with C(new_account_key_content).,Required if C(new_account_key_content) is not used and state is C(changed_key).
        attribute :new_account_key_src

        # @return [String, nil] Content of the ACME account RSA or Elliptic Curve key to change to.,Same restrictions apply as to C(account_key_content).,Mutually exclusive with C(new_account_key_src).,Required if C(new_account_key_src) is not used and state is C(changed_key).
        attribute :new_account_key_content
        validates :new_account_key_content, type: String
      end
    end
  end
end
