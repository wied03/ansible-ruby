# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Mysql_variables < Base
        # @return [String] Variable name to operate
        attribute :variable
        validates :variable, presence: true, type: String

        # @return [String, nil] If set, then sets variable value to this
        attribute :value
        validates :value, type: String
      end
    end
  end
end
