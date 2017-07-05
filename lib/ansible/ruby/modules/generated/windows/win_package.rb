# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs or uninstalls a package.
      # Optionally uses a product_id to check if the package needs installing. You can find product ids for installed programs in the windows registry either in C(HKLM:Software\Microsoft\Windows\CurrentVersion\Uninstall) or for 32 bit programs C(HKLM:Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall)
      class Win_package < Base
        # @return [String] Location of the package to be installed (either on file system, network share or url)
        attribute :path
        validates :path, presence: true, type: String

        # @return [String, nil] Name of the package, if name isn't specified the path will be used for log messages
        attribute :name
        validates :name, type: String

        # @return [String] Product id of the installed package (used for checking if already installed),You can find product ids for installed programs in the windows registry either in C(HKLM:Software\Microsoft\Windows\CurrentVersion\Uninstall) or for 32 bit programs C(HKLM:Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall)'
        attribute :product_id
        validates :product_id, presence: true, type: String

        # @return [String, nil] Any arguments the installer needs
        attribute :arguments
        validates :arguments, type: String

        # @return [:present, :absent, nil] Install or Uninstall
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Username of an account with access to the package if it's located on a file share. Only needed if the winrm user doesn't have access to the package. Also specify user_password for this to function properly.
        attribute :user_name

        # @return [Object, nil] Password of an account with access to the package if it's located on a file share. Only needed if the winrm user doesn't have access to the package. Also specify user_name for this to function properly.
        attribute :user_password

        # @return [Integer, nil] One or more return codes from the package installation that indicates success.,If not provided, defaults to 0
        attribute :expected_return_code
        validates :expected_return_code, type: Integer
      end
    end
  end
end
