# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy or rename export-policies on ONTAP
      class Na_ontap_export_policy < Base
        # @return [:present, :absent, nil] Whether the specified export policy should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the export-policy to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The name of the export-policy to be renamed.
        attribute :from_name
        validates :from_name, type: String

        # @return [String, nil] Name of the vserver to use.
        attribute :vserver
        validates :vserver, type: String
      end
    end
  end
end
