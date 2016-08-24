# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Opkg < Base
        # @return [Array<String>, String] name of package to install/remove
        attribute :name
        validates :name, presence: true, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] state of the package
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:"", :depends, :maintainer, :reinstall, :overwrite, :downgrade, :space, :postinstall, :remove, :checksum, :"removal-of-dependent-packages", nil] opkg --force parameter used
        attribute :force
        validates :force, inclusion: {:in=>[:"", :depends, :maintainer, :reinstall, :overwrite, :downgrade, :space, :postinstall, :remove, :checksum, :"removal-of-dependent-packages"], :message=>"%{value} needs to be :\"\", :depends, :maintainer, :reinstall, :overwrite, :downgrade, :space, :postinstall, :remove, :checksum, :\"removal-of-dependent-packages\""}, allow_nil: true

        # @return [:yes, :no, nil] update the package db first
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
