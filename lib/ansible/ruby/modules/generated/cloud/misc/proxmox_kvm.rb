# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows you to create/delete/stop Qemu(KVM) Virtual Machines in Proxmox VE cluster.
      class Proxmox_kvm < Base
        # @return [:yes, :no, nil] Specify if ACPI should be enabled/disabled.
        attribute :acpi
        validates :acpi, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] Specify if the QEMU Guest Agent should be enabled/disabled.
        attribute :agent
        validates :agent, type: Symbol

        # @return [Array<String>, String, nil] Pass arbitrary arguments to kvm.,This option is for experts only!
        attribute :args
        validates :args, type: TypeGeneric.new(String)

        # @return [String] Specify the target host of the Proxmox VE cluster.
        attribute :api_host
        validates :api_host, presence: true, type: String

        # @return [String] Specify the user to authenticate with.
        attribute :api_user
        validates :api_user, presence: true, type: String

        # @return [String, nil] Specify the password to authenticate with.,You can use C(PROXMOX_PASSWORD) environment variable.
        attribute :api_password
        validates :api_password, type: String

        # @return [:yes, :no, nil] Specify if the VM should be automatically restarted after crash (currently ignored in PVE API).
        attribute :autostart
        validates :autostart, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Specify the amount of RAM for the VM in MB.,Using zero disables the balloon driver.
        attribute :balloon
        validates :balloon, type: Integer

        # @return [:seabios, :ovmf, nil] Specify the BIOS implementation.
        attribute :bios
        validates :bios, expression_inclusion: {:in=>[:seabios, :ovmf], :message=>"%{value} needs to be :seabios, :ovmf"}, allow_nil: true

        # @return [String, nil] Specify the boot order -> boot on floppy C(a), hard disk C(c), CD-ROM C(d), or network C(n).,You can combine to set order.
        attribute :boot
        validates :boot, type: String

        # @return [Object, nil] Enable booting from specified disk. C((ide|sata|scsi|virtio)\d+)
        attribute :bootdisk

        # @return [String, nil] Name of VM to be cloned. If C(vmid) is setted, C(clone) can take arbitrary value but required for intiating the clone.
        attribute :clone
        validates :clone, type: String

        # @return [Integer, nil] Specify number of cores per socket.
        attribute :cores
        validates :cores, type: Integer

        # @return [String, nil] Specify emulated CPU type.
        attribute :cpu
        validates :cpu, type: String

        # @return [Object, nil] Specify if CPU usage will be limited. Value 0 indicates no CPU limit.,If the computer has 2 CPUs, it has total of '2' CPU time
        attribute :cpulimit

        # @return [Integer, nil] Specify CPU weight for a VM.,You can disable fair-scheduler configuration by setting this to 0
        attribute :cpuunits
        validates :cpuunits, type: Integer

        # @return [Array<String>, String, nil] Specify a list of settings you want to delete.
        attribute :delete
        validates :delete, type: TypeGeneric.new(String)

        # @return [Object, nil] Specify the description for the VM. Only used on the configuration web interface.,This is saved as comment inside the configuration file.
        attribute :description

        # @return [Object, nil] Specify if to prevent changes if current configuration file has different SHA1 digest.,This can be used to prevent concurrent modifications.
        attribute :digest

        # @return [Symbol, nil] Allow to force stop VM.,Can be used only with states C(stopped), C(restarted).
        attribute :force
        validates :force, type: Symbol

        # @return [:cloop, :cow, :qcow, :qcow2, :qed, :raw, :vmdk, nil] Target drive's backing file's data format.,Used only with clone
        attribute :format
        validates :format, expression_inclusion: {:in=>[:cloop, :cow, :qcow, :qcow2, :qed, :raw, :vmdk], :message=>"%{value} needs to be :cloop, :cow, :qcow, :qcow2, :qed, :raw, :vmdk"}, allow_nil: true

        # @return [Symbol, nil] Specify if PVE should freeze CPU at startup (use 'c' monitor command to start execution).
        attribute :freeze
        validates :freeze, type: Symbol

        # @return [:yes, :no, nil] Create a full copy of all disk. This is always done when you clone a normal VM.,For VM templates, we try to create a linked clone by default.,Used only with clone
        attribute :full
        validates :full, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Specify a hash/dictionary of map host pci devices into guest. C(hostpci='{"key":"value", "key":"value"}').,Keys allowed are - C(hostpci[n]) where 0 ≤ n ≤ N.,Values allowed are -  C("host="HOSTPCIID[;HOSTPCIID2...]",pcie="1|0",rombar="1|0",x-vga="1|0"").,The C(host) parameter is Host PCI device pass through. HOSTPCIID syntax is C(bus:dev.func) (hexadecimal numbers).,C(pcie=boolean) I(default=0) Choose the PCI-express bus (needs the q35 machine model).,C(rombar=boolean) I(default=1) Specify whether or not the device's ROM will be visible in the guest's memory map.,C(x-vga=boolean) I(default=0) Enable vfio-vga device support.,/!\ This option allows direct access to host hardware. So it is no longer possible to migrate such machines - use with special care.
        attribute :hostpci

        # @return [Object, nil] Selectively enable hotplug features.,This is a comma separated list of hotplug features C('network', 'disk', 'cpu', 'memory' and 'usb').,Value 0 disables hotplug completely and value 1 is an alias for the default C('network,disk,usb').
        attribute :hotplug

        # @return [:any, 2, 1024, nil] Enable/disable hugepages memory.
        attribute :hugepages
        validates :hugepages, expression_inclusion: {:in=>[:any, 2, 1024], :message=>"%{value} needs to be :any, 2, 1024"}, allow_nil: true

        # @return [Object, nil] A hash/dictionary of volume used as IDE hard disk or CD-ROM. C(ide='{"key":"value", "key":"value"}').,Keys allowed are - C(ide[n]) where 0 ≤ n ≤ 3.,Values allowed are - C("storage:size,format=value").,C(storage) is the storage identifier where to create the disk.,C(size) is the size of the disk in GB.,C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).
        attribute :ide

        # @return [Object, nil] Sets the keyboard layout for VNC server.
        attribute :keyboard

        # @return [:yes, :no, nil] Enable/disable KVM hardware virtualization.
        attribute :kvm
        validates :kvm, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Symbol, nil] Sets the real time clock to local time.,This is enabled by default if ostype indicates a Microsoft OS.
        attribute :localtime
        validates :localtime, type: Symbol

        # @return [:migrate, :backup, :snapshot, :rollback, nil] Lock/unlock the VM.
        attribute :lock
        validates :lock, expression_inclusion: {:in=>[:migrate, :backup, :snapshot, :rollback], :message=>"%{value} needs to be :migrate, :backup, :snapshot, :rollback"}, allow_nil: true

        # @return [Object, nil] Specifies the Qemu machine type.,type => C((pc|pc(-i440fx)?-\d+\.\d+(\.pxe)?|q35|pc-q35-\d+\.\d+(\.pxe)?))
        attribute :machine

        # @return [Integer, nil] Memory size in MB for instance.
        attribute :memory
        validates :memory, type: Integer

        # @return [Object, nil] Sets maximum tolerated downtime (in seconds) for migrations.
        attribute :migrate_downtime

        # @return [Object, nil] Sets maximum speed (in MB/s) for migrations.,A value of 0 is no limit.
        attribute :migrate_speed

        # @return [String, nil] Specifies the VM name. Only used on the configuration web interface.,Required only for C(state=present).
        attribute :name
        validates :name, type: String

        # @return [Hash, nil] A hash/dictionary of network interfaces for the VM. C(net='{"key":"value", "key":"value"}').,Keys allowed are - C(net[n]) where 0 ≤ n ≤ N.,Values allowed are - C("model="XX:XX:XX:XX:XX:XX",brigde="value",rate="value",tag="value",firewall="1|0",trunks="vlanid"").,Model is one of C(e1000 e1000-82540em e1000-82544gc e1000-82545em i82551 i82557b i82559er ne2k_isa ne2k_pci pcnet rtl8139 virtio vmxnet3).,C(XX:XX:XX:XX:XX:XX) should be an unique MAC address. This is automatically generated if not specified.,The C(bridge) parameter can be used to automatically add the interface to a bridge device. The Proxmox VE standard bridge is called 'vmbr0'.,Option C(rate) is used to limit traffic bandwidth from and to this interface. It is specified as floating point number, unit is 'Megabytes per second'.,If you specify no bridge, we create a kvm 'user' (NATed) network device, which provides DHCP and DNS services.
        attribute :net
        validates :net, type: Hash

        # @return [Integer, nil] VMID for the clone. Used only with clone.,If newid is not set, the next available VM ID will be fetched from ProxmoxAPI.
        attribute :newid
        validates :newid, type: Integer

        # @return [String, nil] Proxmox VE node, where the new VM will be created.,Only required for C(state=present).,For other states, it will be autodiscovered.
        attribute :node
        validates :node, type: String

        # @return [Object, nil] A hash/dictionaries of NUMA topology. C(numa='{"key":"value", "key":"value"}').,Keys allowed are - C(numa[n]) where 0 ≤ n ≤ N.,Values allowed are - C("cpu="<id[-id];...>",hostnodes="<id[-id];...>",memory="number",policy="(bind|interleave|preferred)"").,C(cpus) CPUs accessing this NUMA node.,C(hostnodes) Host NUMA nodes to use.,C(memory) Amount of memory this NUMA node provides.,C(policy) NUMA allocation policy.
        attribute :numa

        # @return [:yes, :no, nil] Specifies whether a VM will be started during system bootup.
        attribute :onboot
        validates :onboot, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:other, :wxp, :w2k, :w2k3, :w2k8, :wvista, :win7, :win8, :l24, :l26, :solaris, nil] Specifies guest operating system. This is used to enable special optimization/features for specific operating systems.,The l26 is Linux 2.6/3.X Kernel.
        attribute :ostype
        validates :ostype, expression_inclusion: {:in=>[:other, :wxp, :w2k, :w2k3, :w2k8, :wvista, :win7, :win8, :l24, :l26, :solaris], :message=>"%{value} needs to be :other, :wxp, :w2k, :w2k3, :w2k8, :wvista, :win7, :win8, :l24, :l26, :solaris"}, allow_nil: true

        # @return [Object, nil] A hash/dictionary of map host parallel devices. C(parallel='{"key":"value", "key":"value"}').,Keys allowed are - (parallel[n]) where 0 ≤ n ≤ 2.,Values allowed are - C("/dev/parport\d+|/dev/usb/lp\d+").
        attribute :parallel

        # @return [Object, nil] Add the new VM to the specified pool.
        attribute :pool

        # @return [Symbol, nil] Enable/disable the protection flag of the VM. This will enable/disable the remove VM and remove disk operations.
        attribute :protection
        validates :protection, type: Symbol

        # @return [Symbol, nil] Allow reboot. If set to C(yes), the VM exit on reboot.
        attribute :reboot
        validates :reboot, type: Symbol

        # @return [Array<String>, String, nil] Revert a pending change.
        attribute :revert
        validates :revert, type: TypeGeneric.new(String)

        # @return [Object, nil] A hash/dictionary of volume used as sata hard disk or CD-ROM. C(sata='{"key":"value", "key":"value"}').,Keys allowed are - C(sata[n]) where 0 ≤ n ≤ 5.,Values allowed are -  C("storage:size,format=value").,C(storage) is the storage identifier where to create the disk.,C(size) is the size of the disk in GB.,C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).
        attribute :sata

        # @return [Object, nil] A hash/dictionary of volume used as SCSI hard disk or CD-ROM. C(scsi='{"key":"value", "key":"value"}').,Keys allowed are - C(sata[n]) where 0 ≤ n ≤ 13.,Values allowed are -  C("storage:size,format=value").,C(storage) is the storage identifier where to create the disk.,C(size) is the size of the disk in GB.,C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).
        attribute :scsi

        # @return [:lsi, :lsi53c810, :"virtio-scsi-pci", :"virtio-scsi-single", :megasas, :pvscsi, nil] Specifies the SCSI controller model.
        attribute :scsihw
        validates :scsihw, expression_inclusion: {:in=>[:lsi, :lsi53c810, :"virtio-scsi-pci", :"virtio-scsi-single", :megasas, :pvscsi], :message=>"%{value} needs to be :lsi, :lsi53c810, :\"virtio-scsi-pci\", :\"virtio-scsi-single\", :megasas, :pvscsi"}, allow_nil: true

        # @return [Object, nil] A hash/dictionary of serial device to create inside the VM. C('{"key":"value", "key":"value"}').,Keys allowed are - serial[n](str; required) where 0 ≤ n ≤ 3.,Values allowed are - C((/dev/.+|socket)).,/!\ If you pass through a host serial device, it is no longer possible to migrate such machines - use with special care.
        attribute :serial

        # @return [Object, nil] Rets amount of memory shares for auto-ballooning. (0 - 50000).,The larger the number is, the more memory this VM gets.,The number is relative to weights of all other running VMs.,Using 0 disables auto-ballooning, this means no limit.
        attribute :shares

        # @return [Object, nil] Ignore locks,Only root is allowed to use this option.
        attribute :skiplock

        # @return [Object, nil] Specifies SMBIOS type 1 fields.
        attribute :smbios

        # @return [Object, nil] The name of the snapshot. Used only with clone.
        attribute :snapname

        # @return [Integer, nil] Sets the number of CPU sockets. (1 - N).
        attribute :sockets
        validates :sockets, type: Integer

        # @return [Object, nil] Sets the initial date of the real time clock.,Valid format for date are C('now') or C('2016-09-25T16:01:21') or C('2016-09-25').
        attribute :startdate

        # @return [Object, nil] Startup and shutdown behavior. C([[order=]\d+] [,up=\d+] [,down=\d+]).,Order is a non-negative number defining the general startup order.,Shutdown in done with reverse ordering.
        attribute :startup

        # @return [:present, :started, :absent, :stopped, :restarted, :current, nil] Indicates desired state of the instance.,If C(current), the current state of the VM will be fecthed. You can access it with C(results.status)
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :started, :absent, :stopped, :restarted, :current], :message=>"%{value} needs to be :present, :started, :absent, :stopped, :restarted, :current"}, allow_nil: true

        # @return [String, nil] Target storage for full clone.
        attribute :storage
        validates :storage, type: String

        # @return [:yes, :no, nil] Enables/disables the USB tablet device.
        attribute :tablet
        validates :tablet, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Target node. Only allowed if the original VM is on shared storage.,Used only with clone
        attribute :target

        # @return [Symbol, nil] Enables/disables time drift fix.
        attribute :tdf
        validates :tdf, type: Symbol

        # @return [:yes, :no, nil] Enables/disables the template.
        attribute :template
        validates :template, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Timeout for operations.
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:yes, :no, nil] If C(yes), the VM will be update with new value.,Cause of the operations of the API and security reasons, I have disabled the update of the following parameters,C(net, virtio, ide, sata, scsi). Per example updating C(net) update the MAC address and C(virtio) create always new disk...
        attribute :update
        validates :update, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Sets number of hotplugged vcpus.
        attribute :vcpus
        validates :vcpus, type: Integer

        # @return [:std, :cirrus, :vmware, :qxl, :serial0, :serial1, :serial2, :serial3, :qxl2, :qxl3, :qxl4, nil] Select VGA type. If you want to use high resolution modes (>= 1280x1024x16) then you should use option 'std' or 'vmware'.
        attribute :vga
        validates :vga, expression_inclusion: {:in=>[:std, :cirrus, :vmware, :qxl, :serial0, :serial1, :serial2, :serial3, :qxl2, :qxl3, :qxl4], :message=>"%{value} needs to be :std, :cirrus, :vmware, :qxl, :serial0, :serial1, :serial2, :serial3, :qxl2, :qxl3, :qxl4"}, allow_nil: true

        # @return [Hash, nil] A hash/dictionary of volume used as VIRTIO hard disk. C(virtio='{"key":"value", "key":"value"}').,Keys allowed are - C(virto[n]) where 0 ≤ n ≤ 15.,Values allowed are -  C("storage:size,format=value").,C(storage) is the storage identifier where to create the disk.,C(size) is the size of the disk in GB.,C(format) is the drive's backing file's data format. C(qcow2|raw|subvol).
        attribute :virtio
        validates :virtio, type: Hash

        # @return [Integer, nil] Specifies the VM ID. Instead use I(name) parameter.,If vmid is not set, the next available VM ID will be fetched from ProxmoxAPI.
        attribute :vmid
        validates :vmid, type: Integer

        # @return [Object, nil] Creates a virtual hardware watchdog device.
        attribute :watchdog
      end
    end
  end
end
