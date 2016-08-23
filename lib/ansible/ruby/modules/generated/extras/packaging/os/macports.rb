# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Macports < Base
        # @return [String] name of package to install/remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] state of the package
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :active, :inactive], :message=>"%{value} needs to be :present, :absent, :active, :inactive"}, allow_nil: true

        # @return [String] update the package db first
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
