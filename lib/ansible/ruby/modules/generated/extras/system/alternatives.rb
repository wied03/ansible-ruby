# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Alternatives < Base
        # @return [String] The generic name of the link.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The path to the real executable that the link should point to.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] The path to the symbolic link that should point to the real executable.,This option is required on RHEL-based distributions
        attribute :link
        validates :link, type: String
      end
    end
  end
end
