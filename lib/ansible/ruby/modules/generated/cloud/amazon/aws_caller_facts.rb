# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module returns information about the account and user / role from which the AWS access tokens originate.
      # The primary use of this is to get the account id for templating into ARNs or similar to avoid needing to specify this information in inventory.
      class Aws_caller_facts < Base

      end
    end
  end
end
