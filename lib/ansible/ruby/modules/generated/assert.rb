# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Assert < Base
        # @return [Array] A string expression of the same form that can be passed to the 'when' statement,Alternatively, a list of string expressions
        attribute :that
        validates :that, presence: true, type: Array
      end
    end
  end
end
