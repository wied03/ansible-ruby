# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages packages with I(apt-rpm). Both low-level (I(rpm)) and high-level (I(apt-get)) package manager binaries required.
      class Apt_rpm < Base
        # @return [Array<String>, String] name of package to install, upgrade or remove.
        attribute :pkg
        validates :pkg, presence: true, type: TypeGeneric.new(String)

        # @return [:absent, :present, nil] Indicates the desired package state
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Boolean, nil] update the package database first C(apt-get update).
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
