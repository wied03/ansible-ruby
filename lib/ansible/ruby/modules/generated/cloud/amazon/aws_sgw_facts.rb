# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Fetch AWS Storage Gateway facts
      class Aws_sgw_facts < Base
        # @return [Boolean, nil] Gather local disks attached to the storage gateway.
        attribute :gather_local_disks
        validates :gather_local_disks, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Gather tape information for storage gateways in tape mode.
        attribute :gather_tapes
        validates :gather_tapes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Gather file share information for storage gateways in s3 mode.
        attribute :gather_file_shares
        validates :gather_file_shares, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Gather volume information for storage gateways in iSCSI (cached & stored) modes.
        attribute :gather_volumes
        validates :gather_volumes, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
