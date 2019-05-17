# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Update ONTAP software
      class Na_ontap_software_update < Base
        # @return [:present, :absent, nil] Whether the specified ONTAP package should update or not.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] List of nodes to be updated, the nodes have to be a part of a HA Pair.
        attribute :node
        validates :node, type: String

        # @return [String] Specifies the package version.
        attribute :package_version
        validates :package_version, presence: true, type: String

        # @return [String] Specifies the package URL.
        attribute :package_url
        validates :package_url, presence: true, type: String

        # @return [Symbol, nil] Allows the update to continue if warnings are encountered during the validation phase.
        attribute :ignore_validation_warning
        validates :ignore_validation_warning, type: Symbol
      end
    end
  end
end
