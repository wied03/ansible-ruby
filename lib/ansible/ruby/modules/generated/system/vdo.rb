# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module controls the VDO dedupe and compression device. VDO, or Virtual Data Optimizer, is a device-mapper target that provides inline block-level deduplication, compression, and thin provisioning capabilities to primary storage.
      class Vdo < Base
        # @return [String] The name of the VDO volume.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent] Whether this VDO volume should be "present" or "absent". If a "present" VDO volume does not exist, it will be created.  If a "present" VDO volume already exists, it will be modified, by updating the configuration, which will take effect when the VDO volume is restarted. Not all parameters of an existing VDO volume can be modified; the "statusparamkeys" list contains the parameters that can be modified after creation. If an "absent" VDO volume does not exist, it will not be removed.
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [:yes, :no, nil] The "activate" status for a VDO volume.  If this is set to "no", the VDO volume cannot be started, and it will not start on system startup.  However, on initial creation, a VDO volume with "activated" set to "off" will be running, until stopped.  This is the default behavior of the "vdo create" command; it provides the user an opportunity to write a base amount of metadata (filesystem, LVM headers, etc.) to the VDO volume prior to stopping the volume, and leaving it deactivated until ready to use.
        attribute :activated
        validates :activated, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether this VDO volume is running.  A VDO volume must be activated in order to be started.
        attribute :running
        validates :running, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The full path of the device to use for VDO storage. This is required if "state" is "present".
        attribute :device
        validates :device, type: String

        # @return [String, nil] The logical size of the VDO volume (in megabytes, or LVM suffix format).  If not specified for a new volume, this defaults to the same size as the underlying storage device, which is specified in the 'device' parameter. Existing volumes will maintain their size if the logicalsize parameter is not specified, or is smaller than or identical to the current size.  If the specified size is larger than the current size, a growlogical operation will be performed.
        attribute :logicalsize
        validates :logicalsize, type: String

        # @return [:enabled, :disabled, nil] Configures whether deduplication is enabled.  The default for a created volume is 'enabled'.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :deduplication
        validates :deduplication, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [:enabled, :disabled, nil] Configures whether compression is enabled.  The default for a created volume is 'enabled'.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :compression
        validates :compression, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] The amount of memory allocated for caching block map pages, in megabytes (or may be issued with an LVM-style suffix of K, M, G, or T).  The default (and minimum) value is 128M.  The value specifies the size of the cache; there is a 15% memory usage overhead. Each 1.25G of block map covers 1T of logical blocks, therefore a small amount of block map cache memory can cache a significantly large amount of block map data.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :blockmapcachesize

        # @return [:enabled, :disabled, nil] Enables or disables the read cache.  The default is 'disabled'.  Choosing 'enabled' enables a read cache which may improve performance for workloads of high deduplication, read workloads with a high level of compression, or on hard disk storage.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :readcache
        validates :readcache, inclusion: {:in=>[:enabled, :disabled], :message=>"%{value} needs to be :enabled, :disabled"}, allow_nil: true

        # @return [Object, nil] Specifies the extra VDO device read cache size in megabytes.  This is in addition to a system-defined minimum.  Using a value with a suffix of K, M, G, or T is optional.  The default value is 0.  1.125 MB of memory per bio thread will be used per 1 MB of read cache specified (for example, a VDO volume configured with 4 bio threads will have a read cache memory usage overhead of 4.5 MB per 1 MB of read cache specified). Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :readcachesize

        # @return [Symbol, nil] Enables 512-byte emulation mode, allowing drivers or filesystems to access the VDO volume at 512-byte granularity, instead of the default 4096-byte granularity. Default is 'disabled'; only recommended when a driver or filesystem requires 512-byte sector level access to a device.  This option is only available when creating a new volume, and cannot be changed for an existing volume.
        attribute :emulate512
        validates :emulate512, type: Symbol

        # @return [Symbol, nil] Specifies whether to attempt to execute a growphysical operation, if there is enough unused space on the device.  A growphysical operation will be executed if there is at least 64 GB of free space, relative to the previous physical size of the affected VDO volume.
        attribute :growphysical
        validates :growphysical, type: Symbol

        # @return [Object, nil] The size of the increment by which the physical size of a VDO volume is grown, in megabytes (or may be issued with an LVM-style suffix of K, M, G, or T).  Must be a power of two between 128M and 32G.  The default is 2G, which supports volumes having a physical size up to 16T. The maximum, 32G, supports a physical size of up to 256T. This option is only available when creating a new volume, and cannot be changed for an existing volume.
        attribute :slabsize

        # @return [:auto, :sync, :async, nil] Specifies the write policy of the VDO volume.  The 'sync' mode acknowledges writes only after data is on stable storage.  The 'async' mode acknowledges writes when data has been cached for writing to stable storage.  The default (and highly recommended) 'auto' mode checks the storage device to determine whether it supports flushes.  Devices that support flushes will result in a VDO volume in 'async' mode, while devices that do not support flushes will run in sync mode. Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :writepolicy
        validates :writepolicy, inclusion: {:in=>[:auto, :sync, :async], :message=>"%{value} needs to be :auto, :sync, :async"}, allow_nil: true

        # @return [Object, nil] Specifies the amount of index memory in gigabytes.  The default is 0.25.  The special decimal values 0.25, 0.5, and 0.75 can be used, as can any positive integer. This option is only available when creating a new volume, and cannot be changed for an existing volume.
        attribute :indexmem

        # @return [Object, nil] Specifies the index mode of the Albireo index.  The default is 'dense', which has a deduplication window of 1 GB of index memory per 1 TB of incoming data, requiring 10 GB of index data on persistent storage. The 'sparse' mode has a deduplication window of 1 GB of index memory per 10 TB of incoming data, but requires 100 GB of index data on persistent storage.  This option is only available when creating a new volume, and cannot be changed for an existing volume.
        attribute :indexmode

        # @return [Object, nil] Specifies the number of threads to use for acknowledging completion of requested VDO I/O operations. Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead).  The default is 1.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :ackthreads

        # @return [Object, nil] Specifies the number of threads to use for submitting I/O operations to the storage device.  Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead).  The default is 4. Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :biothreads

        # @return [Object, nil] Specifies the number of threads to use for CPU-intensive work such as hashing or compression.  Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead).  The default is 2. Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :cputhreads

        # @return [Object, nil] Specifies the number of threads across which to subdivide parts of the VDO processing based on logical block addresses.  Valid values are integer values from 1 to 100 (lower numbers are preferable due to overhead). The default is 1.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :logicalthreads

        # @return [Object, nil] Specifies the number of threads across which to subdivide parts of the VDO processing based on physical block addresses.  Valid values are integer values from 1 to 16 (lower numbers are preferable due to overhead). The physical space used by the VDO volume must be larger than (slabsize * physicalthreads).  The default is 1.  Existing volumes will maintain their previously configured setting unless a different value is specified in the playbook.
        attribute :physicalthreads
      end
    end
  end
end
