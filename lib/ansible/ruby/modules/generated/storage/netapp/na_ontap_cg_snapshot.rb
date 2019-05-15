# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create consistency group snapshot for ONTAP volumes.
      class Na_ontap_cg_snapshot < Base
        # @return [String, nil] If you want to create a snapshot.
        attribute :state
        validates :state, type: String

        # @return [String] Name of the vserver.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [Object] A list of volumes in this filer that is part of this CG operation.
        attribute :volumes
        validates :volumes, presence: true

        # @return [String] The provided name of the snapshot that is created in each volume.
        attribute :snapshot
        validates :snapshot, presence: true, type: String

        # @return [:urgent, :medium, :relaxed, nil] Timeout selector.
        attribute :timeout
        validates :timeout, inclusion: {:in=>[:urgent, :medium, :relaxed], :message=>"%{value} needs to be :urgent, :medium, :relaxed"}, allow_nil: true

        # @return [Object, nil] A human readable SnapMirror label to be attached with the consistency group snapshot copies.
        attribute :snapmirror_label
      end
    end
  end
end
