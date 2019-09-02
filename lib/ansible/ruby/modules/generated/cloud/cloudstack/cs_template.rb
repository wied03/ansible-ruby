# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Register templates from an URL.
      # Create templates from a ROOT volume of a stopped VM or its snapshot.
      # Update (since version 2.7), extract and delete templates.
      class Cs_template < Base
        # @return [String] Name of the template.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] URL of where the template is hosted on I(state=present).,URL to which the template would be extracted on I(state=extracted).,Mutually exclusive with C(vm).
        attribute :url
        validates :url, type: String

        # @return [String, nil] VM name the template will be created from its volume or alternatively from a snapshot.,VM must be in stopped state if created from its volume.,Mutually exclusive with C(url).
        attribute :vm
        validates :vm, type: String

        # @return [String, nil] Name of the snapshot, created from the VM ROOT volume, the template will be created from.,C(vm) is required together with this argument.
        attribute :snapshot
        validates :snapshot, type: String

        # @return [String, nil] OS type that best represents the OS of this template.
        attribute :os_type
        validates :os_type, type: String

        # @return [Object, nil] The MD5 checksum value of this template.,If set, we search by checksum instead of name.
        attribute :checksum

        # @return [Symbol, nil] Note: this flag was not implemented and therefore marked as deprecated.,Deprecated, will be removed in version 2.11.
        attribute :is_ready
        validates :is_ready, type: Symbol

        # @return [Symbol, nil] Register the template to be publicly available to all users.,Only used if C(state) is present.
        attribute :is_public
        validates :is_public, type: Symbol

        # @return [Symbol, nil] Register the template to be featured.,Only used if C(state) is present.
        attribute :is_featured
        validates :is_featured, type: Symbol

        # @return [Symbol, nil] Register the template having XS/VMWare tools installed in order to support dynamic scaling of VM CPU/memory.,Only used if C(state) is present.
        attribute :is_dynamically_scalable
        validates :is_dynamically_scalable, type: Symbol

        # @return [Symbol, nil] Whether the template should be synced or removed across zones.,Only used if C(state) is present or absent.
        attribute :cross_zones
        validates :cross_zones, type: Symbol

        # @return [:http_download, :ftp_upload, nil] Mode for the template extraction.,Only used if I(state=extracted).
        attribute :mode
        validates :mode, expression_inclusion: {:in=>[:http_download, :ftp_upload], :message=>"%{value} needs to be :http_download, :ftp_upload"}, allow_nil: true

        # @return [Object, nil] Domain the template, snapshot or VM is related to.
        attribute :domain

        # @return [Object, nil] Account the template, snapshot or VM is related to.
        attribute :account

        # @return [Object, nil] Name of the project the template to be registered in.
        attribute :project

        # @return [String, nil] Name of the zone you wish the template to be registered or deleted from.,If not specified, first found zone will be used.
        attribute :zone
        validates :zone, type: String

        # @return [:all, :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community, nil] Name of the filter used to search for the template.,The filter C(all) was added in 2.7.
        attribute :template_filter
        validates :template_filter, expression_inclusion: {:in=>[:all, :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community], :message=>"%{value} needs to be :all, :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community"}, allow_nil: true

        # @return [:display_text, :checksum, :cross_zones, nil] Options to find a template uniquely.,More than one allowed.
        attribute :template_find_options
        validates :template_find_options, expression_inclusion: {:in=>[:display_text, :checksum, :cross_zones], :message=>"%{value} needs to be :display_text, :checksum, :cross_zones"}, allow_nil: true

        # @return [:KVM, :kvm, :VMware, :vmware, :BareMetal, :baremetal, :XenServer, :xenserver, :LXC, :lxc, :HyperV, :hyperv, :UCS, :ucs, :OVM, :ovm, :Simulator, :simulator, nil] Name the hypervisor to be used for creating the new template.,Relevant when using I(state=present).
        attribute :hypervisor
        validates :hypervisor, expression_inclusion: {:in=>[:KVM, :kvm, :VMware, :vmware, :BareMetal, :baremetal, :XenServer, :xenserver, :LXC, :lxc, :HyperV, :hyperv, :UCS, :ucs, :OVM, :ovm, :Simulator, :simulator], :message=>"%{value} needs to be :KVM, :kvm, :VMware, :vmware, :BareMetal, :baremetal, :XenServer, :xenserver, :LXC, :lxc, :HyperV, :hyperv, :UCS, :ucs, :OVM, :ovm, :Simulator, :simulator"}, allow_nil: true

        # @return [Symbol, nil] Whether the template requires HVM or not.,Only considered while creating the template.
        attribute :requires_hvm
        validates :requires_hvm, type: Symbol

        # @return [Symbol, nil] Enable template password reset support.
        attribute :password_enabled
        validates :password_enabled, type: Symbol

        # @return [Object, nil] The tag for this template.
        attribute :template_tag

        # @return [Symbol, nil] True if the template supports the sshkey upload feature.,Only considered if C(url) is used (API limitation).
        attribute :sshkey_enabled
        validates :sshkey_enabled, type: Symbol

        # @return [Symbol, nil] Sets the template type to routing, i.e. if template is used to deploy routers.,Only considered if C(url) is used.
        attribute :is_routing
        validates :is_routing, type: Symbol

        # @return [:QCOW2, :RAW, :VHD, :OVA, nil] The format for the template.,Only considered if I(state=present).
        attribute :format
        validates :format, expression_inclusion: {:in=>[:QCOW2, :RAW, :VHD, :OVA], :message=>"%{value} needs to be :QCOW2, :RAW, :VHD, :OVA"}, allow_nil: true

        # @return [Symbol, nil] Allows the template or its derivatives to be extractable.
        attribute :is_extractable
        validates :is_extractable, type: Symbol

        # @return [Object, nil] Template details in key/value pairs.
        attribute :details

        # @return [32, 64, nil] 32 or 64 bits support.
        attribute :bits
        validates :bits, expression_inclusion: {:in=>[32, 64], :message=>"%{value} needs to be 32, 64"}, allow_nil: true

        # @return [String, nil] Display text of the template.
        attribute :display_text
        validates :display_text, type: String

        # @return [:present, :absent, :extracted, nil] State of the template.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent, :extracted], :message=>"%{value} needs to be :present, :absent, :extracted"}, allow_nil: true

        # @return [Boolean, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] List of tags. Tags are a list of dictionaries having keys C(key) and C(value).,To delete all tags, set a empty list e.g. C(tags: []).
        attribute :tags
      end
    end
  end
end
