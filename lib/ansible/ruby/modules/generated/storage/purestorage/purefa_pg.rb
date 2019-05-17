# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, delete or modify protection groups on Pure Storage FlashArrays.
      class Purefa_pg < Base
        # @return [String] The name of the protection group.
        attribute :pgroup
        validates :pgroup, presence: true, type: String

        # @return [:absent, :present, nil] Define whether the protection group should exist or not.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Array<String>, String, nil] List of existing volumes to add to protection group.
        attribute :volume
        validates :volume, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of existing hosts to add to protection group.
        attribute :host
        validates :host, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] List of existing hostgroups to add to protection group.
        attribute :hostgroup
        validates :hostgroup, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Define whether to eradicate the protection group on delete and leave in trash.
        attribute :eradicate
        validates :eradicate, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Define whether to enabled snapshots for the protection group.
        attribute :enabled
        validates :enabled, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
