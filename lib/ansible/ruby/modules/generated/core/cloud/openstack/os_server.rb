# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Os_server < Base
        # @return [String] Name that has to be given to the instance
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The name or id of the base image to boot.
        attribute :image
        validates :image, presence: true, type: String

        # @return [Object, nil] Text to use to filter image names, for the case, such as HP, where there are multiple image names matching the common identifying portions. image_exclude is a negative match filter - it is text that may not exist in the image name. Defaults to "(deprecated)"
        attribute :image_exclude

        # @return [Integer, nil] The name or id of the flavor in which the new instance has to be created. Mutually exclusive with flavor_ram
        attribute :flavor
        validates :flavor, type: Integer

        # @return [Integer, nil] The minimum amount of ram in MB that the flavor in which the new instance has to be created must have. Mutually exclusive with flavor.
        attribute :flavor_ram
        validates :flavor_ram, type: Integer

        # @return [Object, nil] Text to use to filter flavor names, for the case, such as Rackspace, where there are multiple flavors that have the same ram count. flavor_include is a positive match filter - it must exist in the flavor name.
        attribute :flavor_include

        # @return [String, nil] The key pair name to be used when creating a instance
        attribute :key_name
        validates :key_name, type: String

        # @return [String, nil] Names of the security groups to which the instance should be added. This may be a YAML list or a comma separated string.
        attribute :security_groups
        validates :security_groups, type: String

        # @return [String, nil] Name or ID of a network to attach this instance to. A simpler version of the nics parameter, only one of network or nics should be supplied.
        attribute :network
        validates :network, type: String

        # @return [String, nil] A list of networks to which the instance's interface should be attached. Networks may be referenced by net-id/net-name/port-id or port-name.,Also this accepts a string containing a list of (net/port)-(id/name) Eg: nics: "net-id=uuid-1,port-name=myport" Only one of network or nics should be supplied.
        attribute :nics
        validates :nics, type: String

        # @return [String, nil] Ensure instance has public ip however the cloud wants to do that
        attribute :auto_ip
        validates :auto_ip, type: String

        # @return [String, nil] list of valid floating IPs that pre-exist to assign to this node
        attribute :floating_ips
        validates :floating_ips, type: String

        # @return [String, nil] Name of floating IP pool from which to choose a floating IP
        attribute :floating_ip_pools
        validates :floating_ip_pools, type: String

        # @return [String, nil] A list of key value pairs that should be provided as a metadata to the new instance or a string containing a list of key-value pairs. Eg:  meta: "key1=value1,key2=value2"
        attribute :meta
        validates :meta, type: String

        # @return [String, nil] If the module should wait for the instance to be created.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] The amount of time the module should wait for the instance to get into active state.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [String, nil] Whether to boot the server with config drive enabled
        attribute :config_drive
        validates :config_drive, type: String

        # @return [String, nil] Opaque blob of data which is made available to the instance
        attribute :userdata
        validates :userdata, type: String

        # @return [Object, nil] Should the instance boot from a persistent volume created based on the image given. Mututally exclusive with boot_volume.
        attribute :boot_from_volume

        # @return [Object, nil] The size of the volume to create in GB if booting from volume based on an image.
        attribute :volume_size

        # @return [String, nil] Volume name or id to use as the volume to boot from. Implies boot_from_volume. Mutually exclusive with image and boot_from_volume.
        attribute :boot_volume
        validates :boot_volume, type: String

        # @return [Object, nil] If true, delete volume when deleting instance (if booted from volume)
        attribute :terminate_volume

        # @return [Array, nil] A list of preexisting volumes names or ids to attach to the instance
        attribute :volumes
        validates :volumes, type: Array

        # @return [String, nil] Arbitrary key/value pairs to the scheduler for custom use
        attribute :scheduler_hints
        validates :scheduler_hints, type: String

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
