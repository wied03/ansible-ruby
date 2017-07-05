# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manages whole lifecycle of the Virtual Machine(VM) in oVirt. Since VM can hold many states in oVirt, this see notes to see how the states of the VM are handled.
      class Ovirt_vms < Base
        # @return [Object, nil] Name of the the Virtual Machine to manage. If VM don't exists C(name) is required. Otherwise C(id) or C(name) can be used.
        attribute :name

        # @return [Object, nil] ID of the the Virtual Machine to manage.
        attribute :id

        # @return [:running, :stopped, :present, :absent, :suspended, :next_run, nil] Should the Virtual Machine be running/stopped/present/absent/suspended/next_run.,I(present) and I(running) are equal states.,I(next_run) state updates the VM and if the VM has next run configuration it will be rebooted.,Please check I(notes) to more detailed description of states.
        attribute :state
        validates :state, inclusion: {:in=>[:running, :stopped, :present, :absent, :suspended, :next_run], :message=>"%{value} needs to be :running, :stopped, :present, :absent, :suspended, :next_run"}, allow_nil: true

        # @return [Object, nil] Name of the cluster, where Virtual Machine should be created. Required if creating VM.
        attribute :cluster

        # @return [Object, nil] Name of the template, which should be used to create Virtual Machine. Required if creating VM.,If template is not specified and VM doesn't exist, VM will be created from I(Blank) template.
        attribute :template

        # @return [Object, nil] Version number of the template to be used for VM.,By default the latest available version of the template is used.
        attribute :template_version

        # @return [Object, nil] Specify if latest template version should be used, when running a stateless VM.,If this parameter is set to I(true) stateless VM is created.
        attribute :use_latest_template_version

        # @return [Object, nil] Amount of memory of the Virtual Machine. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).,Default value is set by engine.
        attribute :memory

        # @return [Object, nil] Amount of minimal guaranteed memory of the Virtual Machine. Prefix uses IEC 60027-2 standard (for example 1GiB, 1024MiB).,C(memory_guaranteed) parameter can't be lower than C(memory) parameter. Default value is set by engine.
        attribute :memory_guaranteed

        # @return [Object, nil] Set a CPU shares for this Virtual Machine. Default value is set by oVirt engine.
        attribute :cpu_shares

        # @return [Object, nil] Number of virtual CPUs cores of the Virtual Machine. Default value is set by oVirt engine.
        attribute :cpu_cores

        # @return [Object, nil] Number of virtual CPUs sockets of the Virtual Machine. Default value is set by oVirt engine.
        attribute :cpu_sockets

        # @return [:server, :desktop, nil] Type of the Virtual Machine. Default value is set by oVirt engine.
        attribute :type
        validates :type, inclusion: {:in=>[:server, :desktop], :message=>"%{value} needs to be :server, :desktop"}, allow_nil: true

        # @return [:rhel_6_ppc64, :other, :freebsd, :windows_2003x64, :windows_10, :rhel_6x64, :rhel_4x64, :windows_2008x64, :windows_2008R2x64, :debian_7, :windows_2012x64, :ubuntu_14_04, :ubuntu_12_04, :ubuntu_13_10, :windows_8x64, :other_linux_ppc64, :windows_2003, :other_linux, :windows_10x64, :windows_2008, :rhel_3, :rhel_5, :rhel_4, :other_ppc64, :sles_11, :rhel_6, :windows_xp, :rhel_7x64, :freebsdx64, :rhel_7_ppc64, :windows_7, :rhel_5x64, :ubuntu_14_04_ppc64, :sles_11_ppc64, :windows_8, :windows_2012R2x64, :windows_2008r2x64, :ubuntu_13_04, :ubuntu_12_10, :windows_7x64, nil] Operating system of the Virtual Machine. Default value is set by oVirt engine.
        attribute :operating_system
        validates :operating_system, inclusion: {:in=>[:rhel_6_ppc64, :other, :freebsd, :windows_2003x64, :windows_10, :rhel_6x64, :rhel_4x64, :windows_2008x64, :windows_2008R2x64, :debian_7, :windows_2012x64, :ubuntu_14_04, :ubuntu_12_04, :ubuntu_13_10, :windows_8x64, :other_linux_ppc64, :windows_2003, :other_linux, :windows_10x64, :windows_2008, :rhel_3, :rhel_5, :rhel_4, :other_ppc64, :sles_11, :rhel_6, :windows_xp, :rhel_7x64, :freebsdx64, :rhel_7_ppc64, :windows_7, :rhel_5x64, :ubuntu_14_04_ppc64, :sles_11_ppc64, :windows_8, :windows_2012R2x64, :windows_2008r2x64, :ubuntu_13_04, :ubuntu_12_10, :windows_7x64], :message=>"%{value} needs to be :rhel_6_ppc64, :other, :freebsd, :windows_2003x64, :windows_10, :rhel_6x64, :rhel_4x64, :windows_2008x64, :windows_2008R2x64, :debian_7, :windows_2012x64, :ubuntu_14_04, :ubuntu_12_04, :ubuntu_13_10, :windows_8x64, :other_linux_ppc64, :windows_2003, :other_linux, :windows_10x64, :windows_2008, :rhel_3, :rhel_5, :rhel_4, :other_ppc64, :sles_11, :rhel_6, :windows_xp, :rhel_7x64, :freebsdx64, :rhel_7_ppc64, :windows_7, :rhel_5x64, :ubuntu_14_04_ppc64, :sles_11_ppc64, :windows_8, :windows_2012R2x64, :windows_2008r2x64, :ubuntu_13_04, :ubuntu_12_10, :windows_7x64"}, allow_nil: true

        # @return [Object, nil] List of boot devices which should be used to boot. Choices I(network), I(hd) and I(cdrom).,For example: ['cdrom', 'hd']. Default value is set by oVirt engine.
        attribute :boot_devices

        # @return [Object, nil] Specify host where Virtual Machine should be running. By default the host is chosen by engine scheduler.,This parameter is used only when C(state) is I(running) or I(present).
        attribute :host

        # @return [Object, nil] If I(True) Virtual Machine will be set as highly available.,If I(False) Virtual Machine won't be set as highly available.,If no value is passed, default value is set by oVirt engine.
        attribute :high_availability

        # @return [Object, nil] If I(True) Virtual Machine will be set as delete protected.,If I(False) Virtual Machine won't be set as delete protected.,If no value is passed, default value is set by oVirt engine.
        attribute :delete_protected

        # @return [Object, nil] If I(True) Virtual Machine will be set as stateless.,If I(False) Virtual Machine will be unset as stateless.,If no value is passed, default value is set by oVirt engine.
        attribute :stateless

        # @return [Boolean, nil] If I(True) then the disks of the created virtual machine will be cloned and independent of the template.,This parameter is used only when C(state) is I(running) or I(present) and VM didn't exist before.
        attribute :clone
        validates :clone, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If I(True) then the permissions of the template (only the direct ones, not the inherited ones) will be copied to the created virtual machine.,This parameter is used only when C(state) is I(running) or I(present) and VM didn't exist before.
        attribute :clone_permissions
        validates :clone_permissions, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] ISO file from ISO storage domain which should be attached to Virtual Machine.,If you pass empty string the CD will be ejected from VM.,If used with C(state) I(running) or I(present) and VM is running the CD will be attached to VM.,If used with C(state) I(running) or I(present) and VM is down the CD will be attached to VM persistently.
        attribute :cd_iso

        # @return [Boolean, nil] Please check to I(Synopsis) to more detailed description of force parameter, it can behave differently in different situations.
        attribute :force
        validates :force, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] List of NICs, which should be attached to Virtual Machine. NIC is described by following dictionary:,C(name) - Name of the NIC.,C(profile_name) - Profile name where NIC should be attached.,C(interface) -  Type of the network interface. One of following: I(virtio), I(e1000), I(rtl8139), default is I(virtio).,C(mac_address) - Custom MAC address of the network interface, by default it's obtained from MAC pool.,C(Note:),This parameter is used only when C(state) is I(running) or I(present) and is able to only create NICs. To manage NICs of the VM in more depth please use M(ovirt_nics) module instead.
        attribute :nics

        # @return [Object, nil] List of disks, which should be attached to Virtual Machine. Disk is described by following dictionary:,C(name) - Name of the disk. Either C(name) or C(id) is reuqired.,C(id) - ID of the disk. Either C(name) or C(id) is reuqired.,C(interface) - Interface of the disk, either I(virtio) or I(IDE), default is I(virtio).,C(bootable) - I(True) if the disk should be bootable, default is non bootable.,C(activate) - I(True) if the disk should be activated, default is activated.,C(Note:),This parameter is used only when C(state) is I(running) or I(present) and is able to only attach disks. To manage disks of the VM in more depth please use M(ovirt_disks) module instead.
        attribute :disks

        # @return [Object, nil] Dictionary with values for Windows Virtual Machine initialization using sysprep:,C(host_name) - Hostname to be set to Virtual Machine when deployed.,C(active_directory_ou) - Active Directory Organizational Unit, to be used for login of user.,C(org_name) - Organization name to be set to Windows Virtual Machine.,C(domain) - Domain to be set to Windows Virtual Machine.,C(timezone) - Timezone to be set to Windows Virtual Machine.,C(ui_language) - UI language of the Windows Virtual Machine.,C(system_locale) - System localization of the Windows Virtual Machine.,C(input_locale) - Input localization of the Windows Virtual Machine.,C(windows_license_key) - License key to be set to Windows Virtual Machine.,C(user_name) - Username to be used for set password to Windows Virtual Machine.,C(root_password) - Password to be set for username to Windows Virtual Machine.
        attribute :sysprep

        # @return [Object, nil] Dictionary with values for Unix-like Virtual Machine initialization using cloud init:,C(host_name) - Hostname to be set to Virtual Machine when deployed.,C(timezone) - Timezone to be set to Virtual Machine when deployed.,C(user_name) - Username to be used to set password to Virtual Machine when deployed.,C(root_password) - Password to be set for user specified by C(user_name) parameter.,C(authorized_ssh_keys) - Use this SSH keys to login to Virtual Machine.,C(regenerate_ssh_keys) - If I(True) SSH keys will be regenerated on Virtual Machine.,C(custom_script) - Cloud-init script which will be executed on Virtual Machine when deployed.,C(dns_servers) - DNS servers to be configured on Virtual Machine.,C(dns_search) - DNS search domains to be configured on Virtual Machine.,C(nic_boot_protocol) - Set boot protocol of the network interface of Virtual Machine. Can be one of none, dhcp or static.,C(nic_ip_address) - If boot protocol is static, set this IP address to network interface of Virtual Machine.,C(nic_netmask) - If boot protocol is static, set this netmask to network interface of Virtual Machine.,C(nic_gateway) - If boot protocol is static, set this gateway to network interface of Virtual Machine.,C(nic_name) - Set name to network interface of Virtual Machine.,C(nic_on_boot) - If I(True) network interface will be set to start on boot.
        attribute :cloud_init

        # @return [Object, nil] List of dictionaries representing network interafaces to be setup by cloud init.,This option is used, when user needs to setup more network interfaces via cloud init.,If one network interface is enough, user should use C(cloud_init) I(nic_*) parameters. C(cloud_init) I(nic_*) parameters are merged with C(cloud_init_nics) parameters.,Dictionary can contain following values:,C(nic_boot_protocol) - Set boot protocol of the network interface of Virtual Machine. Can be one of none, dhcp or static.,C(nic_ip_address) - If boot protocol is static, set this IP address to network interface of Virtual Machine.,C(nic_netmask) - If boot protocol is static, set this netmask to network interface of Virtual Machine.,C(nic_gateway) - If boot protocol is static, set this gateway to network interface of Virtual Machine.,C(nic_name) - Set name to network interface of Virtual Machine.,C(nic_on_boot) - If I(True) network interface will be set to start on boot.
        attribute :cloud_init_nics

        # @return [Object, nil] Path to a kernel image used to boot the virtual machine.,Kernel image must be stored on either the ISO domain or on the host's storage.
        attribute :kernel_path

        # @return [Object, nil] Path to an initial ramdisk to be used with the kernel specified by C(kernel_path) option.,Ramdisk image must be stored on either the ISO domain or on the host's storage.
        attribute :initrd_path

        # @return [Object, nil] Kernel command line parameters (formatted as string) to be used with the kernel specified by C(kernel_path) option.
        attribute :kernel_params

        # @return [Object, nil] Name of virtual machine's hardware configuration.,By default no instance type is used.
        attribute :instance_type

        # @return [Object, nil] Description of the Virtual Machine.
        attribute :description

        # @return [Object, nil] Comment of the Virtual Machine.
        attribute :comment

        # @return [Object, nil] Sets time zone offset of the guest hardware clock.,For example: Etc/GMT
        attribute :timezone

        # @return [Object, nil] Specify a serial number policy for the Virtual Machine.,Following options are supported:,C(vm) - Sets the Virtual Machine's UUID as its serial number.,C(host) - Sets the host's UUID as the Virtual Machine's serial number.,C(custom) - Allows you to specify a custom serial number in C(serial_policy_value).
        attribute :serial_policy

        # @return [Object, nil] Allows you to specify a custom serial number.,This parameter is used only when C(serial_policy) is I(custom).
        attribute :serial_policy_value
      end
    end
  end
end
