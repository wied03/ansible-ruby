# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # List the MFA (Multi-Factor Authentication) devices registered for a user
      class Iam_mfa_device_facts < Base
        # @return [Object, nil] The name of the user whose MFA devices will be listed
        attribute :user_name
      end
    end
  end
end
