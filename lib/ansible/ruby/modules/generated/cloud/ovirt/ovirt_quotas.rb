# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage datacenter quotas in oVirt
      class Ovirt_quotas < Base
        # @return [Object] Name of the the quota to manage.
        attribute :name
        validates :name, presence: true

        # @return [:present, :absent, nil] Should the quota be present/absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Name of the datacenter where quota should be managed.
        attribute :data_center
        validates :data_center, presence: true

        # @return [Object, nil] Description of the the quota to manage.
        attribute :description

        # @return [Object, nil] Cluster threshold(soft limit) defined in percentage (0-100).
        attribute :cluster_threshold

        # @return [Object, nil] Cluster grace(hard limit) defined in percentage (1-100).
        attribute :cluster_grace

        # @return [Object, nil] Storage threshold(soft limit) defined in percentage (0-100).
        attribute :storage_threshold

        # @return [Object, nil] Storage grace(hard limit) defined in percentage (1-100).
        attribute :storage_grace

        # @return [Object, nil] List of dictionary of cluster limits, which is valid to specific cluster.,If cluster isn't spefied it's valid to all clusters in system:,C(cluster) - Name of the cluster.,C(memory) - Memory limit (in GiB).,C(cpu) - CPU limit.
        attribute :clusters

        # @return [Object, nil] List of dictionary of storage limits, which is valid to specific storage.,If storage isn't spefied it's valid to all storages in system:,C(storage) - Name of the storage.,C(size) - Size limit (in GiB).
        attribute :storages
      end
    end
  end
end
