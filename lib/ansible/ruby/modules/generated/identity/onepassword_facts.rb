# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # M(onepassword_facts) wraps the C(op) command line utility to fetch data about one or more 1password items and return as Ansible facts.
      # A fatal error occurs if any of the items being searched for can not be found.
      # Recommend using with the C(no_log) option to avoid logging the values of the secrets being retrieved.
      class Onepassword_facts < Base
        # @return [String, Array<Hash>, Hash] A list of one or more search terms.,Each search term can either be a simple string or it can be a dictionary for more control.,When passing a simple string, I(field) is assumed to be C(password).,When passing a dictionary, the following fields are available.
        attribute :search_terms
        validates :search_terms, presence: true, type: TypeGeneric.new(Hash, String)

        # @return [Object, nil] A dictionary containing authentication details. If this is set, M(onepassword_facts) will attempt to login to 1password automatically.,The required values can be stored in Ansible Vault, and passed to the module securely that way.,Without this option, you must have already logged in via the 1Password CLI before running Ansible.
        attribute :auto_login

        # @return [String, nil] Used to specify the exact path to the C(op) command line interface
        attribute :cli_path
        validates :cli_path, type: String
      end
    end
  end
end
