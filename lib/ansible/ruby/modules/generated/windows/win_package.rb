# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs or uninstalls a package in either an MSI or EXE format.
      # These packages can be sources from the local file system, network file share or a url.
      # Please read the notes section around some caveats with this module.
      class Win_package < Base
        # @return [Array<String>, String, nil] Any arguments the installer needs to either install or uninstall the package.,If the package is an MSI do not supply the C(/qn), C(/log) or C(/norestart) arguments.,As of Ansible 2.5, this parameter can be a list of arguments and the module will escape the arguments as necessary, it is recommended to use a string when dealing with MSI packages due to the unique escaping issues with msiexec.
        attribute :arguments
        validates :arguments, type: TypeGeneric.new(String)

        # @return [String, nil] Will check the existance of the path specified and use the result to determine whether the package is already installed.,You can use this in conjunction with C(product_id) and other C(creates_*).
        attribute :creates_path
        validates :creates_path, type: String

        # @return [Object, nil] Will check the existing of the service specified and use the result to determine whether the package is already installed.,You can use this in conjunction with C(product_id) and other C(creates_*).
        attribute :creates_service

        # @return [Float, nil] Will check the file version property of the file at C(creates_path) and use the result to determine whether the package is already installed.,C(creates_path) MUST be set and is a file.,You can use this in conjunction with C(product_id) and other C(creates_*).
        attribute :creates_version
        validates :creates_version, type: Float

        # @return [Integer, nil] One or more return codes from the package installation that indicates success.,Before Ansible 2.4 this was just 0 but since 2.4 this is both C(0) and C(3010).,A return code of C(3010) usually means that a reboot is required, the C(reboot_required) return value is set if the return code is C(3010).
        attribute :expected_return_code
        validates :expected_return_code, type: Integer

        # @return [Object, nil] The password for C(user_name), must be set when C(user_name) is.
        attribute :password

        # @return [String, nil] Location of the package to be installed or uninstalled.,This package can either be on the local file system, network share or a url.,If the path is on a network share and the current WinRM transport doesn't support credential delegation, then C(user_name) and C(user_password) must be set to access the file.,There are cases where this file will be copied locally to the server so it can access it, see the notes for more info.,If C(state=present) then this value MUST be set.,If C(state=absent) then this value does not need to be set if C(product_id) is.
        attribute :path
        validates :path, type: String

        # @return [String, nil] The product id of the installed packaged.,This is used for checking whether the product is already installed and getting the uninstall information if C(state=absent).,You can find product ids for installed programs in the Windows registry editor either at C(HKLM:Software\Microsoft\Windows\CurrentVersion\Uninstall) or for 32 bit programs at C(HKLM:Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall).,This SHOULD be set when the package is not an MSI, or the path is a url or a network share and credential delegation is not being used. The C(creates_*) options can be used instead but is not recommended.
        attribute :product_id
        validates :product_id, type: String

        # @return [String, nil] Whether to install or uninstall the package.,The module uses C(product_id) and whether it exists at the registry path to see whether it needs to install or uninstall the package.
        attribute :state
        validates :state, type: String

        # @return [Object, nil] Username of an account with access to the package if it is located on a file share.,This is only needed if the WinRM transport is over an auth method that does not support credential delegation like Basic or NTLM.
        attribute :username

        # @return [String, nil] If C(no), SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.,Before Ansible 2.4 this defaulted to C(no).
        attribute :validate_certs
        validates :validate_certs, type: String
      end
    end
  end
end
