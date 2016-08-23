# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_keystone_domain_facts < Base
        # @return [String] Name or ID of the domain
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] A dictionary of meta data to use for further filtering.  Elements of this dictionary may be additional dictionaries.
        attribute :filters
        validates :filters, type: String
      end
    end
  end
end
