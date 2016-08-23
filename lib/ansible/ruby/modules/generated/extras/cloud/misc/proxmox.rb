# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Proxmox < Base
        # @return [String] the host of the Proxmox VE cluster
        attribute :api_host
        validates :api_host, presence: true, type: String

        # @return [String] the user to authenticate with
        attribute :api_user
        validates :api_user, presence: true, type: String

        # @return [String] the password to authenticate with,you can use PROXMOX_PASSWORD environment variable
        attribute :api_password
        validates :api_password, type: String

        # @return [String] the instance id
        attribute :vmid
        validates :vmid, presence: true, type: String

        # @return [Object] enable / disable https certificate verification
        attribute :validate_certs

        # @return [String] Proxmox VE node, when new VM will be created,required only for C(state=present),for another states will be autodiscovered
        attribute :node
        validates :node, type: String

        # @return [String] the instance root password,required only for C(state=present)
        attribute :password
        validates :password, type: String

        # @return [String] the instance hostname,required only for C(state=present)
        attribute :hostname
        validates :hostname, type: String

        # @return [String] the template for VM creating,required only for C(state=present)
        attribute :ostemplate
        validates :ostemplate, type: String

        # @return [Fixnum] hard disk size in GB for instance
        attribute :disk
        validates :disk, type: Fixnum

        # @return [Fixnum] numbers of allocated cpus for instance
        attribute :cpus
        validates :cpus, type: Fixnum

        # @return [Fixnum] memory size in MB for instance
        attribute :memory
        validates :memory, type: Fixnum

        # @return [Fixnum] swap memory size in MB for instance
        attribute :swap
        validates :swap, type: Fixnum

        # @return [String] specifies network interfaces for the container
        attribute :netif
        validates :netif, type: String

        # @return [Object] specifies the address the container will be assigned
        attribute :ip_address

        # @return [Object] specifies whether a VM will be started during system bootup
        attribute :onboot

        # @return [String] target storage
        attribute :storage
        validates :storage, type: String

        # @return [Fixnum] CPU weight for a VM
        attribute :cpuunits
        validates :cpuunits, type: Fixnum

        # @return [Object] sets DNS server IP address for a container
        attribute :nameserver

        # @return [Object] sets DNS search domain for a container
        attribute :searchdomain

        # @return [Fixnum] timeout for operations
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [String] forcing operations,can be used only with states C(present), C(stopped), C(restarted),with C(state=present) force option allow to overwrite existing container,with states C(stopped) , C(restarted) allow to force stop instance
        attribute :force
        validates :force, type: String

        # @return [String] Indicate desired state of the instance
        attribute :state
        validates :state, inclusion: {:in=>[:present, :started, :absent, :stopped, :restarted], :message=>"%{value} needs to be :present, :started, :absent, :stopped, :restarted"}, allow_nil: true
      end
    end
  end
end
