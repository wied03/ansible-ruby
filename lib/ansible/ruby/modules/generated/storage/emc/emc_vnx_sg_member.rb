# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages the members of an existing storage group.
      class Emc_vnx_sg_member < Base
        # @return [String] Name of the Storage group to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer] Lun id to be added.
        attribute :lunid
        validates :lunid, presence: true, type: Integer

        # @return [:present, :absent, nil] Indicates the desired lunid state.,C(present) ensures specified lunid is present in the Storage Group.,C(absent) ensures specified lunid is absent from Storage Group.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
