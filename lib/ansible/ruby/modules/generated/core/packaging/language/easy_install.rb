# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Easy_install < Base
        # @return [String] A Python library name
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] an optional I(virtualenv) directory path to install into. If the I(virtualenv) does not exist, it is created automatically
        attribute :virtualenv
        validates :virtualenv, type: String

        # @return [:yes, :no, nil] Whether the virtual environment will inherit packages from the global site-packages directory.  Note that if this setting is changed on an already existing virtual environment it will not have any effect, the environment must be deleted and newly created.
        attribute :virtualenv_site_packages
        validates :virtualenv_site_packages, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] The command to create the virtual environment with. For example C(pyvenv), C(virtualenv), C(virtualenv2).
        attribute :virtualenv_command
        validates :virtualenv_command, type: String

        # @return [Object] The explicit executable or a pathname to the executable to be used to run easy_install for a specific version of Python installed in the system. For example C(easy_install-3.3), if there are both Python 2.7 and 3.3 installations in the system and you want to run easy_install for the Python 3.3 installation.
        attribute :executable

        # @return [:present, :latest, nil] The desired state of the library. C(latest) ensures that the latest version is installed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest], :message=>"%{value} needs to be :present, :latest"}, allow_nil: true
      end
    end
  end
end
