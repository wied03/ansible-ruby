# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Slurp < Base
        # @return [Object] The file on the remote system to fetch. This I(must) be a file, not a directory.
        attribute :src
        validates :src, presence: true
      end
    end
  end
end
