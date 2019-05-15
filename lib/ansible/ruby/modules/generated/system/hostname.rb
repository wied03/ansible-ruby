# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set system's hostname, supports most OSs/Distributions, including those using systemd.
      # Note, this module does *NOT* modify C(/etc/hosts). You need to modify it yourself using other modules like template or replace.
      # Windows, HP-UX and AIX are not currently supported.
      class Hostname < Base
        # @return [String] Name of the host
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
