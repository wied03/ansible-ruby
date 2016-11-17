# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages VTP domain configuration.
      class Nxos_vtp_domain < Base
        # @return [String] VTP domain name.
        attribute :domain
        validates :domain, presence: true, type: String
      end
    end
  end
end
