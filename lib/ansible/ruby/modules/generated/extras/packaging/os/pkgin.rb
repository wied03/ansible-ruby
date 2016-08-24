# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Pkgin < Base
        # @return [String, Array<String>, nil] Name of package to install/remove;,multiple names may be given, separated by commas
        attribute :name
        validates :name, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] Intended state of the package
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Update repository database. Can be run with other steps or on it's own.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Upgrade main packages to their newer versions
        attribute :upgrade
        validates :upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Upgrade all packages to their newer versions
        attribute :full_upgrade
        validates :full_upgrade, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Clean packages cache
        attribute :clean
        validates :clean, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Force package reinstall
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
