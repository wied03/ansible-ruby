# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create/Delete/Initialize/Modify SnapMirror volume/vserver relationships
      class Na_ontap_snapmirror < Base
        # @return [:present, :absent, nil] Whether the specified relationship should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String, nil] Specifies the name of the source volume for the SnapMirror.
        attribute :source_volume
        validates :source_volume, type: String

        # @return [String, nil] Specifies the name of the destination volume for the SnapMirror.
        attribute :destination_volume
        validates :destination_volume, type: String

        # @return [String, nil] Name of the source vserver for the SnapMirror.
        attribute :source_vserver
        validates :source_vserver, type: String

        # @return [String, nil] Name of the destination vserver for the SnapMirror.
        attribute :destination_vserver
        validates :destination_vserver, type: String

        # @return [Object, nil] Specifies the source endpoint of the SnapMirror relationship.
        attribute :source_path

        # @return [String, nil] Specifies the destination endpoint of the SnapMirror relationship.
        attribute :destination_path
        validates :destination_path, type: String

        # @return [:data_protection, :load_sharing, :vault, :restore, :transition_data_protection, :extended_data_protection, nil] Specify the type of SnapMirror relationship.
        attribute :relationship_type
        validates :relationship_type, expression_inclusion: {:in=>[:data_protection, :load_sharing, :vault, :restore, :transition_data_protection, :extended_data_protection], :message=>"%{value} needs to be :data_protection, :load_sharing, :vault, :restore, :transition_data_protection, :extended_data_protection"}, allow_nil: true

        # @return [String, nil] Specify the name of the current schedule, which is used to update the SnapMirror relationship.,Optional for create, modifiable.
        attribute :schedule
        validates :schedule, type: String

        # @return [Object, nil] Source hostname or IP address.,Required for SnapMirror delete
        attribute :source_hostname

        # @return [Object, nil] Source username.,Optional if this is same as destination username.
        attribute :source_username

        # @return [Object, nil] Source password.,Optional if this is same as destination password.
        attribute :source_password
      end
    end
  end
end
