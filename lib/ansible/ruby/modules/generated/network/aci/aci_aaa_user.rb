# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage AAA users on Cisco ACI fabrics.
      class Aci_aaa_user < Base
        # @return [String, nil] The password of the locally-authenticated user.
        attribute :aaa_password
        validates :aaa_password, type: String

        # @return [Object, nil] The lifetime of the locally-authenticated user password.
        attribute :aaa_password_lifetime

        # @return [Object, nil] Whether this account needs password update.
        attribute :aaa_password_update_required

        # @return [String, nil] The name of the locally-authenticated user user to add.
        attribute :aaa_user
        validates :aaa_user, type: String

        # @return [Object, nil] Whether to clear the password history of a locally-authenticated user.
        attribute :clear_password_history

        # @return [Object, nil] Description for the AAA user.
        attribute :description

        # @return [String, nil] The email address of the locally-authenticated user.
        attribute :email
        validates :email, type: String

        # @return [Object, nil] The status of the locally-authenticated user account.
        attribute :enabled

        # @return [String, nil] The expiration date of the locally-authenticated user account.
        attribute :expiration
        validates :expiration, type: String

        # @return [Boolean, nil] Whether to enable an expiration date for the locally-authenticated user account.
        attribute :expires
        validates :expires, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The first name of the locally-authenticated user.
        attribute :first_name
        validates :first_name, type: String

        # @return [String, nil] The last name of the locally-authenticated user.
        attribute :last_name
        validates :last_name, type: String

        # @return [String, nil] The phone number of the locally-authenticated user.
        attribute :phone
        validates :phone, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
