# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_package < Base
        # @return [String] Location of the package to be installed (either on file system, network share or url)
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] name of the package. Just for logging reasons, will use the value of path if name isn't specified
        attribute :name
        validates :name, type: String

        # @return [Object] product id of the installed package (used for checking if already installed)
        attribute :product_id
        validates :product_id, presence: true

        # @return [Object] Any arguments the installer needs
        attribute :arguments

        # @return [:present, :absent, nil] Install or Uninstall
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object] Username of an account with access to the package if its located on a file share. Only needed if the winrm user doesn't have access to the package. Also specify user_password for this to function properly.
        attribute :user_name

        # @return [Object] Password of an account with access to the package if its located on a file share. Only needed if the winrm user doesn't have access to the package. Also specify user_name for this to function properly.
        attribute :user_password
      end
    end
  end
end
