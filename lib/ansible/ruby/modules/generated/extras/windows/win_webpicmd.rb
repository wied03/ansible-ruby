# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_webpicmd < Base
        # @return [Object] Name of the package to be installed
        attribute :name
        validates :name, presence: true
      end
    end
  end
end
