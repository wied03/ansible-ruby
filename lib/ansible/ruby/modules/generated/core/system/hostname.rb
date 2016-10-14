# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set system's hostname.
      # Currently implemented on Debian, Ubuntu, Fedora, RedHat, openSUSE, Linaro, ScientificLinux, Arch, CentOS, AMI.
      # Any distribution that uses systemd as their init system.
      # Note, this module does *NOT* modify /etc/hosts. You need to modify it yourself using other modules like template or replace.
      class Hostname < Base
        # @return [String] Name of the host
        attribute :name
        validates :name, presence: true, type: String
      end
    end
  end
end
