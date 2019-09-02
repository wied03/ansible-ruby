# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Authenticates to CyberArk Vault using Privileged Account Security Web Services SDK and creates a session fact that can be used by other modules. It returns an Ansible fact called I(cyberark_session). Every module can use this fact as C(cyberark_session) parameter.
      class Cyberark_authentication < Base
        # @return [:present, :absent, nil] Specifies if an authentication logon/logoff and a cyberark_session should be added/removed.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] The name of the user who will logon to the Vault.
        attribute :username
        validates :username, type: String

        # @return [String, nil] The password of the user.
        attribute :password
        validates :password, type: String

        # @return [Object, nil] The new password of the user. This parameter is optional, and enables you to change a password.
        attribute :new_password

        # @return [String, nil] A string containing the base URL of the server hosting CyberArk's Privileged Account Security Web Services SDK.
        attribute :api_base_url
        validates :api_base_url, type: String

        # @return [:yes, :no, nil] If C(false), SSL certificates will not be validated.  This should only set to C(false) used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether or not Shared Logon Authentication will be used.
        attribute :use_shared_logon_authentication
        validates :use_shared_logon_authentication, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether or not users will be authenticated via a RADIUS server. Valid values are true/false.
        attribute :use_radius_authentication
        validates :use_radius_authentication, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Dictionary set by a CyberArk authentication containing the different values to perform actions on a logged-on CyberArk session.
        attribute :cyberark_session
        validates :cyberark_session, type: String
      end
    end
  end
end
