# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Hostname < Base
        # @return [String] Name of the host
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
