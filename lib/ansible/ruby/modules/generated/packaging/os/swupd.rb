# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages updates and bundles with the swupd bundle manager, which is used by the Clear Linux Project for Intel Architecture.
      class Swupd < Base
        # @return [Object, nil] URL pointing to the contents of available bundles. If not specified, the contents are retrieved from clearlinux.org.
        attribute :contenturl

        # @return [Object, nil] The format suffix for version file downloads. For example [1,2,3,staging,etc]. If not specified, the default format is used.
        attribute :format

        # @return [Integer, nil] The manifest contains information about the bundles at certaion version of the OS. Specify a Manifest version to verify against that version or leave unspecified to verify against the current version.
        attribute :manifest
        validates :manifest, type: Integer

        # @return [String, nil] Name of the (I)bundle to install or remove.
        attribute :name
        validates :name, type: String

        # @return [:present, :absent, nil] Indicates the desired (I)bundle state. C(present) ensures the bundle is installed while C(absent) ensures the (I)bundle is not installed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Updates the OS to the latest version.
        attribute :update
        validates :update, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Overrides both I(contenturl) and I(versionurl).
        attribute :url

        # @return [Boolean, nil] Verify content for OS version.
        attribute :verify
        validates :verify, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] URL for version string download.
        attribute :versionurl
      end
    end
  end
end
