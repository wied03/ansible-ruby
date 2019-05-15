# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gathers information about IAM roles
      class Iam_role_facts < Base
        # @return [String, nil] Name of a role to search for,Mutually exclusive with C(prefix)
        attribute :name
        validates :name, type: String

        # @return [String, nil] Prefix of role I(path) to restrict IAM role search for,Mutually exclusive with C(name)
        attribute :path_prefix
        validates :path_prefix, type: String
      end
    end
  end
end
