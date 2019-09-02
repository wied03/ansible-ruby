# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # create, destroy or rename Igroups and add or remove initiator in igroups.
      class Na_ontap_igroup < Base
        # @return [:present, :absent, nil] Whether the specified Igroup should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The name of the igroup to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:fcp, :iscsi, :mixed, nil] Type of the initiator group.,Required when C(state=present).
        attribute :initiator_group_type
        validates :initiator_group_type, expression_inclusion: {:in=>[:fcp, :iscsi, :mixed], :message=>"%{value} needs to be :fcp, :iscsi, :mixed"}, allow_nil: true

        # @return [String, nil] Name of igroup to rename to name.
        attribute :from_name
        validates :from_name, type: String

        # @return [String, nil] OS type of the initiators within the group.
        attribute :ostype
        validates :ostype, type: String

        # @return [String, nil] WWPN, WWPN Alias, or iSCSI name of Initiator to add or remove.
        attribute :initiator
        validates :initiator, type: String

        # @return [Object, nil] Name of a current portset to bind to the newly created igroup.
        attribute :bind_portset

        # @return [Symbol, nil] Forcibly remove the initiator even if there are existing LUNs mapped to this initiator group.
        attribute :force_remove_initiator
        validates :force_remove_initiator, type: Symbol

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
