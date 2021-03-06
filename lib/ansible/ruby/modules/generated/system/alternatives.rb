# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages symbolic links using the 'update-alternatives' tool
      # Useful when multiple programs are installed but provide similar functionality (e.g. different editors).
      class Alternatives < Base
        # @return [String] The generic name of the link.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The path to the real executable that the link should point to.
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] The path to the symbolic link that should point to the real executable.,This option is always required on RHEL-based distributions. On Debian-based distributions this option is required when the alternative I(name) is unknown to the system.
        attribute :link
        validates :link, type: String

        # @return [Integer, nil] The priority of the alternative
        attribute :priority
        validates :priority, type: Integer
      end
    end
  end
end
