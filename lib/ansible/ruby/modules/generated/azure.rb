# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Azure < Base
        # @return [String] name of the virtual machine and associated cloud service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] the azure location to use (e.g. 'East US')
        attribute :location
        validates :location, presence: true, type: String

        # @return [Object] azure subscription id. Overrides the AZURE_SUBSCRIPTION_ID environment variable.
        attribute :subscription_id

        # @return [Object] path to an azure management certificate associated with the subscription id. Overrides the AZURE_CERT_PATH environment variable.
        attribute :management_cert_path

        # @return [String] the azure storage account in which to store the data disks.
        attribute :storage_account
        validates :storage_account, presence: true, type: String

        # @return [String] system image for creating the virtual machine (e.g., b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu_DAILY_BUILD-precise-12_04_3-LTS-amd64-server-20131205-en-us-30GB)
        attribute :image
        validates :image, presence: true, type: String

        # @return [String] azure role size for the new virtual machine (e.g., Small, ExtraLarge, A6). You have to pay attention to the fact that instances of type G and DS are not available in all regions (locations). Make sure if you selected the size and type of instance available in your chosen location.
        attribute :role_size
        validates :role_size, type: String

        # @return [Fixnum] a comma-separated list of TCP ports to expose on the virtual machine (e.g., "22,80")
        attribute :endpoints
        validates :endpoints, type: Fixnum

        # @return [String] the unix username for the new virtual machine.
        attribute :user
        validates :user, type: String

        # @return [Object] the unix password for the new virtual machine.
        attribute :password

        # @return [String] path to an X509 certificate containing the public ssh key to install in the virtual machine. See http://www.windowsazure.com/en-us/manage/linux/tutorials/intro-to-linux/ for more details.,if this option is specified, password-based ssh authentication will be disabled.
        attribute :ssh_cert_path
        validates :ssh_cert_path, type: String

        # @return [Object] Name of virtual network.
        attribute :virtual_network_name

        # @return [Object] hostname to write /etc/hostname. Defaults to <name>.cloudapp.net.
        attribute :hostname

        # @return [String] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum

        # @return [Fixnum] how long before wait gives up for redirects, in seconds
        attribute :wait_timeout_redirects
        validates :wait_timeout_redirects, type: Fixnum

        # @return [String] create or terminate instances
        attribute :state
        validates :state, type: String

        # @return [String] Enable Auto Updates on Windows Machines
        attribute :auto_updates
        validates :auto_updates, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Enable winrm on Windows Machines
        attribute :enable_winrm
        validates :enable_winrm, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The type of the os that is gettings provisioned
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:windows, :linux], :message=>"%{value} needs to be :windows, :linux"}, allow_nil: true
      end
    end
  end
end