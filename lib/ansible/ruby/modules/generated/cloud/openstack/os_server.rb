# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or Remove compute instances from OpenStack.
      class Os_server < Base
        # @return [String] Name that has to be given to the instance. It is also possible to specify the ID of the instance instead of its name if I(state) is I(absent).
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

        # @return [Object, nil] Names of the security groups to which the instance should be added. This may be a YAML list or a comma separated string.
        attribute :security_groups

        # @return [String, nil] Name or ID of a network to attach this instance to. A simpler version of the nics parameter, only one of network or nics should be supplied.
        attribute :network
        validates :network, type: String

        # @return [Array<Hash>, Hash, nil] A list of networks to which the instance's interface should be attached. Networks may be referenced by net-id/net-name/port-id or port-name.,Also this accepts a string containing a list of (net/port)-(id/name) Eg: nics: "net-id=uuid-1,port-name=myport" Only one of network or nics should be supplied.
        attribute :nics
        validates :nics, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] Ensure instance has public ip however the cloud wants to do that
        attribute :auto_ip
        validates :auto_ip, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] list of valid floating IPs that pre-exist to assign to this node
        attribute :floating_ips

        # @return [Object, nil] Name of floating IP pool from which to choose a floating IP
        attribute :floating_ip_pools

        # @return [Hash, Array<String>, String, nil] A list of key value pairs that should be provided as a metadata to the new instance or a string containing a list of key-value pairs. Eg:  meta: "key1=value1,key2=value2"
        attribute :meta
        validates :meta, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] If the module should wait for the instance to be created.
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] The amount of time the module should wait for the instance to get into active state.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:yes, :no, nil] Whether to boot the server with config drive enabled
        attribute :config_drive
        validates :config_drive, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Opaque blob of data which is made available to the instance
        attribute :userdata

        # @return [:yes, :no, nil] Should the instance boot from a persistent volume created based on the image given. Mututally exclusive with boot_volume.
        attribute :boot_from_volume
        validates :boot_from_volume, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] The size of the volume to create in GB if booting from volume based on an image.
        attribute :volume_size

        # @return [Object, nil] Volume name or id to use as the volume to boot from. Implies boot_from_volume. Mutually exclusive with image and boot_from_volume.
        attribute :boot_volume

        # @return [:yes, :no, nil] If C(yes), delete volume when deleting instance (if booted from volume)
        attribute :terminate_volume
        validates :terminate_volume, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] A list of preexisting volumes names or ids to attach to the instance
        attribute :volumes

        # @return [Object, nil] Arbitrary key/value pairs to the scheduler for custom use
        attribute :scheduler_hints

        # @return [:present, :absent, nil] Should the resource be present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] When I(state) is absent and this option is true, any floating IP associated with the instance will be deleted along with the instance.
        attribute :delete_fip
        validates :delete_fip, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When I(auto_ip) is true and this option is true, the I(auto_ip) code will attempt to re-use unassigned floating ips in the project before creating a new one. It is important to note that it is impossible to safely do this concurrently, so if your use case involves concurrent server creation, it is highly recommended to set this to false and to delete the floating ip associated with a server when the server is deleted using I(delete_fip).
        attribute :reuse_ips
        validates :reuse_ips, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Availability zone in which to create the server.
        attribute :availability_zone
      end
    end
  end
end
