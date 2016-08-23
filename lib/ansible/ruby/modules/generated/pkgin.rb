# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pkgin < Base
        # @return [Array<String>] Name of package to install/remove;,multiple names may be given, separated by commas
        attribute :name, flat_array: true
        validates :name, type: TypeGeneric.new(String)

        # @return [String] Intended state of the package
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Update repository database. Can be run with other steps or on it's own.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Upgrade main packages to their newer versions
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Upgrade all packages to their newer versions
        attribute :full_upgrade
        validates :full_upgrade, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Clean packages cache
        attribute :clean
        validates :clean, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Force package reinstall
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end