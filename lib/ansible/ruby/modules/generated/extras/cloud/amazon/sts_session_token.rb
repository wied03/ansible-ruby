# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Obtain a session token from the AWS Security Token Service
      class Sts_session_token < Base
        # @return [Object, nil] The duration, in seconds, of the session token. See http://docs.aws.amazon.com/STS/latest/APIReference/API_GetSessionToken.html#API_GetSessionToken_RequestParameters for acceptable and default values.
        attribute :duration_seconds

        # @return [Object, nil] The identification number of the MFA device that is associated with the user who is making the GetSessionToken call.
        attribute :mfa_serial_number

        # @return [Object, nil] The value provided by the MFA device, if the trust policy of the user requires MFA.
        attribute :mfa_token
      end
    end
  end
end
