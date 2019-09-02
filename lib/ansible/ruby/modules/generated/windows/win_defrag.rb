# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Locates and consolidates fragmented files on local volumes to improve system performance.
      # More information regarding C(win_defrag) is available from: U(https://technet.microsoft.com/en-us/library/cc731650(v=ws.11).aspx)
      class Win_defrag < Base
        # @return [Array<String>, String, nil] A list of drive letters or mount point paths of the volumes to be defragmented.,If this parameter is omitted, all volumes (not excluded) will be fragmented.
        attribute :include_volumes
        validates :include_volumes, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] A list of drive letters or mount point paths to exclude from defragmentation.
        attribute :exclude_volumes
        validates :exclude_volumes, type: TypeGeneric.new(String)

        # @return [Boolean, nil] Perform free space consolidation on the specified volumes.
        attribute :freespace_consolidation
        validates :freespace_consolidation, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:low, :normal, nil] Run the operation at low or normal priority.
        attribute :priority
        validates :priority, expression_inclusion: {:in=>[:low, :normal], :message=>"%{value} needs to be :low, :normal"}, allow_nil: true

        # @return [:yes, :no, nil] Run the operation on each volume in parallel in the background.
        attribute :parallel
        validates :parallel, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
