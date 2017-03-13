# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage packages on SUSE and openSUSE using the zypper and rpm tools.
      class Zypper < Base
        # @return [String] Package name C(name) or package specifier.,Can include a version like C(name=1.0), C(name>3.4) or C(name<=2.7). If a version is given, C(oldpackage) is implied and zypper is allowed to update the package within the version range given.,You can also pass a url or a local path to a rpm file.,When using state=latest, this can be '*', which updates all installed packages.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :latest, :absent, nil] C(present) will make sure the package is installed. C(latest)  will make sure the latest version of the package is installed. C(absent)  will make sure the specified package is not installed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}, allow_nil: true

        # @return [:package, :patch, :pattern, :product, :srcpackage, :application, nil] The type of package to be operated on.
        attribute :type
        validates :type, inclusion: {:in=>[:package, :patch, :pattern, :product, :srcpackage, :application], :message=>"%{value} needs to be :package, :patch, :pattern, :product, :srcpackage, :application"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to disable to GPG signature checking of the package signature being installed. Has an effect only if state is I(present) or I(latest).
        attribute :disable_gpg_check
        validates :disable_gpg_check, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Corresponds to the C(--no-recommends) option for I(zypper). Default behavior (C(yes)) modifies zypper's default behavior; C(no) does install recommended packages.
        attribute :disable_recommends
        validates :disable_recommends, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Adds C(--force) option to I(zypper). Allows to downgrade packages and change vendor or architecture.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Run the equivalent of C(zypper refresh) before the operation.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Adds C(--oldpackage) option to I(zypper). Allows to downgrade packages with less side-effects than force. This is implied as soon as a version is specified as part of the package name.
        attribute :oldpackage
        validates :oldpackage, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
