# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages OpenNebula Hosts
      class One_host < Base
        # @return [String] Hostname of the machine to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, :enabled, :disabled, :offline, nil] Takes the host to the desired lifecycle state.,If C(absent) the host will be deleted from the cluster.,If C(present) the host will be created in the cluster (includes C(enabled), C(disabled) and C(offline) states).,If C(enabled) the host is fully operational.,C(disabled), e.g. to perform maintenance operations.,C(offline), host is totally offline.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :enabled, :disabled, :offline], :message=>"%{value} needs to be :absent, :present, :enabled, :disabled, :offline"}, allow_nil: true

        # @return [String, nil] The name of the information manager, this values are taken from the oned.conf with the tag name IM_MAD (name)
        attribute :im_mad_name
        validates :im_mad_name, type: String

        # @return [String, nil] The name of the virtual machine manager mad name, this values are taken from the oned.conf with the tag name VM_MAD (name)
        attribute :vmm_mad_name
        validates :vmm_mad_name, type: String

        # @return [Integer, nil] The cluster ID.
        attribute :cluster_id
        validates :cluster_id, type: Integer

        # @return [String, nil] The cluster specified by name.
        attribute :cluster_name
        validates :cluster_name, type: String

        # @return [Object, nil] The labels for this host.
        attribute :labels

        # @return [Hash, nil] The template or attribute changes to merge into the host template.
        attribute :template
        validates :template, type: Hash
      end
    end
  end
end
