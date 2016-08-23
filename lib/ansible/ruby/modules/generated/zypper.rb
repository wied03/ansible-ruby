# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Zypper < Base
        # @return [String] package name or package specifier with version C(name) or C(name-1.0). You can also pass a url or a local path to a rpm file.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] C(present) will make sure the package is installed. C(latest)  will make sure the latest version of the package is installed. C(absent)  will make sure the specified package is not installed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}, allow_nil: true

        # @return [String] The type of package to be operated on.
        attribute :type
        validates :type, inclusion: {:in=>[:package, :patch, :pattern, :product, :srcpackage], :message=>"%{value} needs to be :package, :patch, :pattern, :product, :srcpackage"}, allow_nil: true

        # @return [String] Whether to disable to GPG signature checking of the package signature being installed. Has an effect only if state is I(present) or I(latest).
        attribute :disable_gpg_check
        validates :disable_gpg_check, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Corresponds to the C(--no-recommends) option for I(zypper). Default behavior (C(yes)) modifies zypper's default behavior; C(no) does install recommended packages.
        attribute :disable_recommends
        validates :disable_recommends, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
