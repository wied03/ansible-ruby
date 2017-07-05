# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates or terminates azure instances. When created optionally waits for it to be 'running'.
      class Azure < Base
        # @return [String] name of the virtual machine and associated cloud service.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] the azure location to use (e.g. 'East US')
        attribute :location
        validates :location, presence: true, type: String

        # @return [String, nil] azure subscription id. Overrides the AZURE_SUBSCRIPTION_ID environment variable.
        attribute :subscription_id
        validates :subscription_id, type: String

        # @return [String, nil] path to an azure management certificate associated with the subscription id. Overrides the AZURE_CERT_PATH environment variable.
        attribute :management_cert_path
        validates :management_cert_path, type: String

        # @return [String] the azure storage account in which to store the data disks.
        attribute :storage_account
        validates :storage_account, presence: true, type: String

        # @return [String] system image for creating the virtual machine (e.g., b39f27a8b8c64d52b05eac6a62ebad85__Ubuntu_DAILY_BUILD-precise-12_04_3-LTS-amd64-server-20131205-en-us-30GB)
        attribute :image
        validates :image, presence: true, type: String

        # @return [String, nil] azure role size for the new virtual machine (e.g., Small, ExtraLarge, A6). You have to pay attention to the fact that instances of type G and DS are not available in all regions (locations). Make sure if you selected the size and type of instance available in your chosen location.
        attribute :role_size
        validates :role_size, type: String

        # @return [Integer, nil] a comma-separated list of TCP ports to expose on the virtual machine (e.g., "22,80")
        attribute :endpoints
        validates :endpoints, type: Integer

        # @return [String, nil] the unix username for the new virtual machine.
        attribute :user
        validates :user, type: String

        # @return [String, nil] the unix password for the new virtual machine.
        attribute :password
        validates :password, type: String

        # @return [String, nil] path to an X509 certificate containing the public ssh key to install in the virtual machine. See http://www.windowsazure.com/en-us/manage/linux/tutorials/intro-to-linux/ for more details.,if this option is specified, password-based ssh authentication will be disabled.
        attribute :ssh_cert_path
        validates :ssh_cert_path, type: String

        # @return [String, nil] Name of virtual network.
        attribute :virtual_network_name
        validates :virtual_network_name, type: String

        # @return [String, nil] hostname to write /etc/hostname. Defaults to <name>.cloudapp.net.
        attribute :hostname
        validates :hostname, type: String

        # @return [:yes, :no, nil] wait for the instance to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer

        # @return [Integer, nil] how long before wait gives up for redirects, in seconds
        attribute :wait_timeout_redirects
        validates :wait_timeout_redirects, type: Integer

        # @return [String, nil] create or terminate instances
        attribute :state
        validates :state, type: String

        # @return [:yes, :no, nil] Enable Auto Updates on Windows Machines
        attribute :auto_updates
        validates :auto_updates, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Enable winrm on Windows Machines
        attribute :enable_winrm
        validates :enable_winrm, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:windows, :linux, nil] The type of the os that is gettings provisioned
        attribute :os_type
        validates :os_type, inclusion: {:in=>[:windows, :linux], :message=>"%{value} needs to be :windows, :linux"}, allow_nil: true
      end
    end
  end
end
