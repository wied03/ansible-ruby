# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Enable or disable NFS on ONTAP
      class Na_ontap_nfs < Base
        # @return [:present, :absent, nil] Whether NFS should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:started, :stopped, nil] Whether the specified NFS should be enabled or disabled. Creates NFS service if doesnt exist.
        attribute :service_state
        validates :service_state, expression_inclusion: {:in=>[:started, :stopped], :message=>"%{value} needs to be :started, :stopped"}, allow_nil: true

        # @return [String] Name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String

        # @return [:enabled, :disabled, nil] status of NFSv3.
        attribute :nfsv3
        validates :nfsv3, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status of if NFSv3 clients see change in FSID as they traverse filesystems.
        attribute :nfsv3_fsid_change
        validates :nfsv3_fsid_change, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status of NFSv4.
        attribute :nfsv4
        validates :nfsv4, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status of NFSv41.
        attribute :nfsv41
        validates :nfsv41, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status of vstorage_state.
        attribute :vstorage_state
        validates :vstorage_state, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [String, nil] Name of the nfsv4_id_domain to use.
        attribute :nfsv4_id_domain
        validates :nfsv4_id_domain, type: String

        # @return [:enabled, :disabled, nil] status of NFS v4.0 ACL feature
        attribute :nfsv40_acl
        validates :nfsv40_acl, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status for NFS v4.0 read delegation feature.
        attribute :nfsv40_read_delegation
        validates :nfsv40_read_delegation, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status for NFS v4.0 write delegation feature.
        attribute :nfsv40_write_delegation
        validates :nfsv40_write_delegation, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status of NFS v4.1 ACL feature
        attribute :nfsv41_acl
        validates :nfsv41_acl, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status for NFS v4.1 read delegation feature.
        attribute :nfsv41_read_delegation
        validates :nfsv41_read_delegation, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] status for NFS v4.1 write delegation feature.
        attribute :nfsv41_write_delegation
        validates :nfsv41_write_delegation, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Enable TCP (support from ONTAP 9.3 onward).
        attribute :tcp
        validates :tcp, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Enable UDP (support from ONTAP 9.3 onward).
        attribute :udp
        validates :udp, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Whether SVM allows showmount
        attribute :showmount
        validates :showmount, expression_inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
