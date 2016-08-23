# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Apt_rpm < Base
        # @return [Array<String>] name of package to install, upgrade or remove.
        attribute :pkg, flat_array: true
        validates :pkg, presence: true, type: TypeGeneric.new(String)

        # @return [String] Indicates the desired package state
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] update the package database first C(apt-get update).
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
