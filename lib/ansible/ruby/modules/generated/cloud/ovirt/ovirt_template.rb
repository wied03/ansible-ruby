# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Module to manage virtual machine templates in oVirt/RHV.
      class Ovirt_template < Base
        # @return [String, nil] Name of the template to manage.
        attribute :name
        validates :name, type: String

        # @return [String, nil] ID of the template to be registered.
        attribute :id
        validates :id, type: String

        # @return [:present, :absent, :exported, :imported, :registered, nil] Should the template be present/absent/exported/imported/registered. When C(state) is I(registered) and the unregistered template's name belongs to an already registered in engine template in the same DC then we fail to register the unregistered template.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :exported, :imported, :registered], :message=>"%{value} needs to be :present, :absent, :exported, :imported, :registered"}, allow_nil: true

        # @return [String, nil] Name of the VM, which will be used to create template.
        attribute :vm
        validates :vm, type: String

        # @return [String, nil] Description of the template.
        attribute :description
        validates :description, type: String

        # @return [String, nil] CPU profile to be set to template.
        attribute :cpu_profile
        validates :cpu_profile, type: String

        # @return [String, nil] Name of the cluster, where template should be created/imported.
        attribute :cluster
        validates :cluster, type: String

        # @return [Object, nil] Boolean indication whether to allow partial registration of a template when C(state) is registered.
        attribute :allow_partial_import

        # @return [Array<Hash>, Hash, nil] Mapper which maps an external virtual NIC profile to one that exists in the engine when C(state) is registered. vnic_profile is described by the following dictionary:,C(source_network_name): The network name of the source network.,C(source_profile_name): The profile name related to the source network.,C(target_profile_id): The id of the target profile id to be mapped to in the engine.
        attribute :vnic_profile_mappings
        validates :vnic_profile_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps cluster name between Template's OVF and the destination cluster this Template should be registered to, relevant when C(state) is registered. Cluster mapping is described by the following dictionary:,C(source_name): The name of the source cluster.,C(dest_name): The name of the destination cluster.
        attribute :cluster_mappings
        validates :cluster_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps role name between Template's OVF and the destination role this Template should be registered to, relevant when C(state) is registered. Role mapping is described by the following dictionary:,C(source_name): The name of the source role.,C(dest_name): The name of the destination role.
        attribute :role_mappings
        validates :role_mappings, type: TypeGeneric.new(Hash)

        # @return [Array<Hash>, Hash, nil] Mapper which maps aaa domain name between Template's OVF and the destination aaa domain this Template should be registered to, relevant when C(state) is registered. The aaa domain mapping is described by the following dictionary:,C(source_name): The name of the source aaa domain.,C(dest_name): The name of the destination aaa domain.
        attribute :domain_mappings
        validates :domain_mappings, type: TypeGeneric.new(Hash)

        # @return [Object, nil] When C(state) is I(exported) this parameter indicates if the existing templates with the same name should be overwritten.
        attribute :exclusive

        # @return [Object, nil] When C(state) is I(exported) or I(imported) this parameter specifies the name of the export storage domain.
        attribute :export_domain

        # @return [String, nil] When C(state) is I(imported) this parameter specifies the name of the image provider to be used.
        attribute :image_provider
        validates :image_provider, type: String

        # @return [String, nil] When C(state) is I(imported) and C(image_provider) is used this parameter specifies the name of disk to be imported as template.
        attribute :image_disk
        validates :image_disk, type: String

        # @return [Object, nil] Number of IO threads used by virtual machine. I(0) means IO threading disabled.
        attribute :io_threads

        # @return [String, nil] When C(state) is I(imported) and C(image_provider) is used this parameter specifies the new name for imported disk, if omitted then I(image_disk) name is used by default. This parameter is used only in case of importing disk image from Glance domain.
        attribute :template_image_disk_name
        validates :template_image_disk_name, type: String

        # @return [String, nil] When C(state) is I(imported) this parameter specifies the name of the destination data storage domain. When C(state) is I(registered) this parameter specifies the name of the data storage domain of the unregistered template.
        attribute :storage_domain
        validates :storage_domain, type: String

        # @return [Boolean, nil] If I(True) then the permissions of the VM (only the direct ones, not the inherited ones) will be copied to the created template.,This parameter is used only when C(state) I(present).
        attribute :clone_permissions
        validates :clone_permissions, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] 'Sealing' is an operation that erases all machine-specific configurations from a filesystem: This includes SSH keys, UDEV rules, MAC addresses, system ID, hostname, etc. If I(true) subsequent virtual machines made from this template will avoid configuration inheritance.,This parameter is used only when C(state) I(present).
        attribute :seal
        validates :seal, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Operating system of the template.,Default value is set by oVirt/RHV engine.,Possible values are: debian_7, freebsd, freebsdx64, other, other_linux, other_linux_ppc64, other_ppc64, rhel_3, rhel_4, rhel_4x64, rhel_5, rhel_5x64, rhel_6, rhel_6x64, rhel_6_ppc64, rhel_7x64, rhel_7_ppc64, sles_11, sles_11_ppc64, ubuntu_12_04, ubuntu_12_10, ubuntu_13_04, ubuntu_13_10, ubuntu_14_04, ubuntu_14_04_ppc64, windows_10, windows_10x64, windows_2003, windows_2003x64, windows_2008, windows_2008x64, windows_2008r2x64, windows_2008R2x64, windows_2012x64, windows_2012R2x64, windows_7, windows_7x64, windows_8, windows_8x64, windows_xp
        attribute :operating_system

        # @return [Object, nil] Amount of memory of the template. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
        attribute :memory

        # @return [Object, nil] Amount of minimal guaranteed memory of the template. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).,C(memory_guaranteed) parameter can't be lower than C(memory) parameter.
        attribute :memory_guaranteed

        # @return [Object, nil] Upper bound of template memory up to which memory hot-plug can be performed. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).
        attribute :memory_max
      end
    end
  end
end
