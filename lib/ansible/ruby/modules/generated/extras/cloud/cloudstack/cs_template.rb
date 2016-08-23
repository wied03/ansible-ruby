# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cs_template < Base
        # @return [String] Name of the template.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] URL of where the template is hosted on C(state=present).,URL to which the template would be extracted on C(state=extracted).,Mutually exclusive with C(vm).
        attribute :url
        validates :url, type: String

        # @return [String] VM name the template will be created from its volume or alternatively from a snapshot.,VM must be in stopped state if created from its volume.,Mutually exclusive with C(url).
        attribute :vm
        validates :vm, type: String

        # @return [String] Name of the snapshot, created from the VM ROOT volume, the template will be created from.,C(vm) is required together with this argument.
        attribute :snapshot
        validates :snapshot, type: String

        # @return [String] OS type that best represents the OS of this template.
        attribute :os_type
        validates :os_type, type: String

        # @return [Object] The MD5 checksum value of this template.,If set, we search by checksum instead of name.
        attribute :checksum

        # @return [Object] This flag is used for searching existing templates.,If set to C(true), it will only list template ready for deployment e.g. successfully downloaded and installed.,Recommended to set it to C(false).
        attribute :is_ready

        # @return [TrueClass] Register the template to be publicly available to all users.,Only used if C(state) is present.
        attribute :is_public
        validates :is_public, type: TrueClass

        # @return [Object] Register the template to be featured.,Only used if C(state) is present.
        attribute :is_featured

        # @return [Object] Register the template having XS/VMWare tools installed in order to support dynamic scaling of VM CPU/memory.,Only used if C(state) is present.
        attribute :is_dynamically_scalable

        # @return [TrueClass] Whether the template should be syned or removed across zones.,Only used if C(state) is present or absent.
        attribute :cross_zones
        validates :cross_zones, type: TrueClass

        # @return [:http_download, :ftp_upload, nil] Mode for the template extraction.,Only used if C(state=extracted).
        attribute :mode
        validates :mode, inclusion: {:in=>[:http_download, :ftp_upload], :message=>"%{value} needs to be :http_download, :ftp_upload"}, allow_nil: true

        # @return [Object] Domain the template, snapshot or VM is related to.
        attribute :domain

        # @return [Object] Account the template, snapshot or VM is related to.
        attribute :account

        # @return [Object] Name of the project the template to be registered in.
        attribute :project

        # @return [String] Name of the zone you wish the template to be registered or deleted from.,If not specified, first found zone will be used.
        attribute :zone
        validates :zone, type: String

        # @return [:featured, :self, :selfexecutable, :sharedexecutable, :executable, :community, nil] Name of the filter used to search for the template.
        attribute :template_filter
        validates :template_filter, inclusion: {:in=>[:featured, :self, :selfexecutable, :sharedexecutable, :executable, :community], :message=>"%{value} needs to be :featured, :self, :selfexecutable, :sharedexecutable, :executable, :community"}, allow_nil: true

        # @return [:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM, nil] Name the hypervisor to be used for creating the new template.,Relevant when using C(state=present).
        attribute :hypervisor
        validates :hypervisor, inclusion: {:in=>[:KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM], :message=>"%{value} needs to be :KVM, :VMware, :BareMetal, :XenServer, :LXC, :HyperV, :UCS, :OVM"}, allow_nil: true

        # @return [Object] true if this template requires HVM.
        attribute :requires_hvm

        # @return [TrueClass] True if the template supports the password reset feature.
        attribute :password_enabled
        validates :password_enabled, type: TrueClass

        # @return [Object] the tag for this template.
        attribute :template_tag

        # @return [Object] True if the template supports the sshkey upload feature.
        attribute :sshkey_enabled

        # @return [Object] True if the template type is routing i.e., if template is used to deploy router.,Only considered if C(url) is used.
        attribute :is_routing

        # @return [:QCOW2, :RAW, :VHD, :OVA, nil] The format for the template.,Relevant when using C(state=present).
        attribute :format
        validates :format, inclusion: {:in=>[:QCOW2, :RAW, :VHD, :OVA], :message=>"%{value} needs to be :QCOW2, :RAW, :VHD, :OVA"}, allow_nil: true

        # @return [Object] True if the template or its derivatives are extractable.
        attribute :is_extractable

        # @return [Object] Template details in key/value pairs.
        attribute :details

        # @return [String] 32 or 64 bits support.
        attribute :bits
        validates :bits, type: String

        # @return [Object] Display text of the template.
        attribute :display_text

        # @return [:present, :absent, :extacted, nil] State of the template.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :extacted], :message=>"%{value} needs to be :present, :absent, :extacted"}, allow_nil: true

        # @return [TrueClass] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, type: TrueClass
      end
    end
  end
end
