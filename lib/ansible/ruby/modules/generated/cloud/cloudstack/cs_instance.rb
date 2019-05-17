# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Deploy, start, update, scale, restart, restore, stop and destroy instances.
      class Cs_instance < Base
        # @return [String, nil] Host name of the instance. C(name) can only contain ASCII letters.,Name will be generated (UUID) by CloudStack if not specified and can not be changed afterwards.,Either C(name) or C(display_name) is required.
        attribute :name
        validates :name, type: String

        # @return [String, nil] Custom display name of the instances.,Display name will be set to C(name) if not specified.,Either C(name) or C(display_name) is required.
        attribute :display_name
        validates :display_name, type: String

        # @return [Object, nil] Group in where the new instance should be in.
        attribute :group

        # @return [:deployed, :started, :stopped, :restarted, :restored, :destroyed, :expunged, :present, :absent, nil] State of the instance.
        attribute :state
        validates :state, inclusion: {:in=>[:deployed, :started, :stopped, :restarted, :restored, :destroyed, :expunged, :present, :absent], :message=>"%{value} needs to be :deployed, :started, :stopped, :restarted, :restored, :destroyed, :expunged, :present, :absent"}, allow_nil: true

        # @return [String, nil] Name or id of the service offering of the new instance.,If not set, first found service offering is used.
        attribute :service_offering
        validates :service_offering, type: String

        # @return [Object, nil] The number of CPUs to allocate to the instance, used with custom service offerings
        attribute :cpu

        # @return [Object, nil] The clock speed/shares allocated to the instance, used with custom service offerings
        attribute :cpu_speed

        # @return [Object, nil] The memory allocated to the instance, used with custom service offerings
        attribute :memory

        # @return [String, nil] Name, display text or id of the template to be used for creating the new instance.,Required when using I(state=present).,Mutually exclusive with C(ISO) option.
        attribute :template
        validates :template, type: String

        # @return [String, nil] Name or id of the ISO to be used for creating the new instance.,Required when using I(state=present).,Mutually exclusive with C(template) option.
        attribute :iso
        validates :iso, type: String

        # @return [:all, :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community, nil] Name of the filter used to search for the template or iso.,Used for params C(iso) or C(template) on I(state=present).,The filter C(all) was added in 2.6.
        attribute :template_filter
        validates :template_filter, inclusion: {:in=>[:all, :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community], :message=>"%{value} needs to be :all, :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community"}, allow_nil: true

        # @return [:KVM, :kvm, :VMware, :vmware, :BareMetal, :baremetal, :XenServer, :xenserver, :LXC, :lxc, :HyperV, :hyperv, :UCS, :ucs, :OVM, :ovm, :Simulator, :simulator, nil] Name the hypervisor to be used for creating the new instance.,Relevant when using I(state=present), but only considered if not set on ISO/template.,If not set or found on ISO/template, first found hypervisor will be used.
        attribute :hypervisor
        validates :hypervisor, inclusion: {:in=>[:KVM, :kvm, :VMware, :vmware, :BareMetal, :baremetal, :XenServer, :xenserver, :LXC, :lxc, :HyperV, :hyperv, :UCS, :ucs, :OVM, :ovm, :Simulator, :simulator], :message=>"%{value} needs to be :KVM, :kvm, :VMware, :vmware, :BareMetal, :baremetal, :XenServer, :xenserver, :LXC, :lxc, :HyperV, :hyperv, :UCS, :ucs, :OVM, :ovm, :Simulator, :simulator"}, allow_nil: true

        # @return [:de, :"de-ch", :es, :fi, :fr, :"fr-be", :"fr-ch", :is, :it, :jp, :"nl-be", :no, :pt, :uk, :us, nil] Keyboard device type for the instance.
        attribute :keyboard
        validates :keyboard, inclusion: {:in=>[:de, :"de-ch", :es, :fi, :fr, :"fr-be", :"fr-ch", :is, :it, :jp, :"nl-be", :no, :pt, :uk, :us], :message=>"%{value} needs to be :de, :\"de-ch\", :es, :fi, :fr, :\"fr-be\", :\"fr-ch\", :is, :it, :jp, :\"nl-be\", :no, :pt, :uk, :us"}, allow_nil: true

        # @return [Array<String>, String, nil] List of networks to use for the new instance.
        attribute :networks
        validates :networks, type: TypeGeneric.new(String)

        # @return [Object, nil] IPv4 address for default instance's network during creation.
        attribute :ip_address

        # @return [Object, nil] IPv6 address for default instance's network.
        attribute :ip6_address

        # @return [Array<Hash>, Hash, nil] List of mappings in the form I({'network': NetworkName, 'ip': 1.2.3.4}),Mutually exclusive with C(networks) option.
        attribute :ip_to_networks
        validates :ip_to_networks, type: TypeGeneric.new(Hash)

        # @return [String, nil] Name of the disk offering to be used.
        attribute :disk_offering
        validates :disk_offering, type: String

        # @return [Integer, nil] Disk size in GByte required if deploying instance from ISO.
        attribute :disk_size
        validates :disk_size, type: Integer

        # @return [Object, nil] Root disk size in GByte required if deploying instance with KVM hypervisor and want resize the root disk size at startup (need CloudStack >= 4.4, cloud-initramfs-growroot installed and enabled in the template)
        attribute :root_disk_size

        # @return [Object, nil] List of security groups the instance to be applied to.
        attribute :security_groups

        # @return [Object, nil] Host on which an instance should be deployed or started on.,Only considered when I(state=started) or instance is running.,Requires root admin privileges.
        attribute :host

        # @return [Object, nil] Domain the instance is related to.
        attribute :domain

        # @return [Object, nil] Account the instance is related to.
        attribute :account

        # @return [String, nil] Name of the project the instance to be deployed in.
        attribute :project
        validates :project, type: String

        # @return [String, nil] Name of the zone in which the instance should be deployed.,If not set, default zone is used.
        attribute :zone
        validates :zone, type: String

        # @return [String, nil] Name of the SSH key to be deployed on the new instance.
        attribute :ssh_key
        validates :ssh_key, type: String

        # @return [Object, nil] Affinity groups names to be applied to the new instance.
        attribute :affinity_groups

        # @return [String, nil] Optional data (ASCII) that can be sent to the instance upon a successful deployment.,The data will be automatically base64 encoded.,Consider switching to HTTP_POST by using I(CLOUDSTACK_METHOD=post) to increase the HTTP_GET size limit of 2KB to 32 KB.
        attribute :user_data
        validates :user_data, type: String

        # @return [Symbol, nil] Force stop/start the instance if required to apply changes, otherwise a running instance will not be changed.
        attribute :force
        validates :force, type: Symbol

        # @return [Symbol, nil] Enables a volume shrinkage when the new size is smaller than the old one.
        attribute :allow_root_disk_shrink
        validates :allow_root_disk_shrink, type: Symbol

        # @return [Array<Hash>, Hash, nil] List of tags. Tags are a list of dictionaries having keys C(key) and C(value).,If you want to delete all tags, set a empty list e.g. I(tags: []).
        attribute :tags
        validates :tags, type: TypeGeneric.new(Hash)

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Map to specify custom parameters.
        attribute :details
      end
    end
  end
end
