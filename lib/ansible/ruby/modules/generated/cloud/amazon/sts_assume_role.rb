# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Assume a role using AWS Security Token Service and obtain temporary credentials
      class Sts_assume_role < Base
        # @return [Object] The Amazon Resource Name (ARN) of the role that the caller is assuming (http://docs.aws.amazon.com/IAM/latest/UserGuide/Using_Identifiers.html#Identifiers_ARNs)
        attribute :role_arn
        validates :role_arn, presence: true

        # @return [Object] Name of the role's session - will be used by CloudTrail
        attribute :role_session_name
        validates :role_session_name, presence: true

        # @return [Object, nil] Supplemental policy to use in addition to assumed role's policies.
        attribute :policy

        # @return [Object, nil] The duration, in seconds, of the role session. The value can range from 900 seconds (15 minutes) to 43200 seconds (12 hours). The max dependis on the IAM role's sessions duration setting. By default, the value is set to 3600 seconds.s
        attribute :duration_seconds

        # @return [Object, nil] A unique identifier that is used by third parties to assume a role in their customers' accounts.
        attribute :external_id

        # @return [Object, nil] The identification number of the MFA device that is associated with the user who is making the AssumeRole call.
        attribute :mfa_serial_number

        # @return [Object, nil] The value provided by the MFA device, if the trust policy of the role being assumed requires MFA.
        attribute :mfa_token
      end
    end
  end
end
