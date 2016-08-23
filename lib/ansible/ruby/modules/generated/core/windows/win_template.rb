# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_template < Base
        # @return [String] Path of a Jinja2 formatted template on the local server. This can be a relative or absolute path.
        attribute :src
        validates :src, presence: true, type: String

        # @return [String] Location to render the template to on the remote machine.
        attribute :dest
        validates :dest, presence: true, type: String
      end
    end
  end
end
