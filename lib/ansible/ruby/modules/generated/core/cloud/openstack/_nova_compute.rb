# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Nova_compute < Base
        # @return [String] login username to authenticate to keystone
        attribute :login_username
        validates :login_username, presence: true, type: String

        # @return [String] Password of login user
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [String] The tenant name of the login user
        attribute :login_tenant_name
        validates :login_tenant_name, presence: true, type: String

        # @return [String, nil] The keystone url for authentication
        attribute :auth_url
        validates :auth_url, type: String

        # @return [Object, nil] Name of the region
        attribute :region_name

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] Name that has to be given to the instance
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The id of the base image to boot. Mutually exclusive with image_name
        attribute :image_id
        validates :image_id, presence: true, type: String

        # @return [Object] The name of the base image to boot. Mutually exclusive with image_id
        attribute :image_name
        validates :image_name, presence: true

        # @return [Object, nil] Text to use to filter image names, for the case, such as HP, where there are multiple image names matching the common identifying portions. image_exclude is a negative match filter - it is text that may not exist in the image name. Defaults to "(deprecated)"
        attribute :image_exclude

        # @return [Integer, nil] The id of the flavor in which the new VM has to be created. Mutually exclusive with flavor_ram
        attribute :flavor_id
        validates :flavor_id, type: Integer

        # @return [Integer, nil] The minimum amount of ram in MB that the flavor in which the new VM has to be created must have. Mutually exclusive with flavor_id
        attribute :flavor_ram
        validates :flavor_ram, type: Integer

        # @return [Object, nil] Text to use to filter flavor names, for the case, such as Rackspace, where there are multiple flavors that have the same ram count. flavor_include is a positive match filter - it must exist in the flavor name.
        attribute :flavor_include

        # @return [String, nil] The key pair name to be used when creating a VM
        attribute :key_name
        validates :key_name, type: String

        # @return [Object, nil] The name of the security group to which the VM should be added
        attribute :security_groups

        # @return [Array<Hash>, nil] A list of network id's to which the VM's interface should be attached
        attribute :nics
        validates :nics, type: TypeGeneric.new(Hash)

        # @return [String, nil] Should a floating ip be auto created and assigned
        attribute :auto_floating_ip
        validates :auto_floating_ip, type: String

        # @return [Object, nil] list of valid floating IPs that pre-exist to assign to this node
        attribute :floating_ips

        # @return [Object, nil] list of floating IP pools from which to choose a floating IP
        attribute :floating_ip_pools

        # @return [Object, nil] Name of the availability zone
        attribute :availability_zone

        # @return [Hash, nil] A list of key value pairs that should be provided as a metadata to the new VM
        attribute :meta
        validates :meta, type: Hash

        # @return [String, nil] If the module should wait for the VM to be created.
        attribute :wait
        validates :wait, type: String

        # @return [Integer, nil] The amount of time the module should wait for the VM to get into active state
        attribute :wait_for
        validates :wait_for, type: Integer

        # @return [String, nil] Whether to boot the server with config drive enabled
        attribute :config_drive
        validates :config_drive, type: String

        # @return [Object, nil] Opaque blob of data which is made available to the instance
        attribute :user_data

        # @return [Object, nil] Arbitrary key/value pairs to the scheduler for custom use
        attribute :scheduler_hints
      end
    end
  end
end
