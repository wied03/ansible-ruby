# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Python library dependencies. To use this module, one of the following keys is required: C(name) or C(requirements).
      class Pip < Base
        # @return [String, nil] The name of a Python library to install or the url of the remote package.,As of 2.2 you can supply a list of names.
        attribute :name
        validates :name, type: String

        # @return [String, nil] The version number to install of the Python library specified in the I(name) parameter
        attribute :version
        validates :version, type: String

        # @return [String, nil] The path to a pip requirements file, which should be local to the remote system. File can be specified as a relative path if using the chdir option.
        attribute :requirements
        validates :requirements, type: String

        # @return [String, nil] An optional path to a I(virtualenv) directory to install into. It cannot be specified together with the 'executable' parameter (added in 2.1). If the virtualenv does not exist, it will be created before installing packages. The optional virtualenv_site_packages, virtualenv_command, and virtualenv_python options affect the creation of the virtualenv.
        attribute :virtualenv
        validates :virtualenv, type: String

        # @return [:yes, :no, nil] Whether the virtual environment will inherit packages from the global site-packages directory.  Note that if this setting is changed on an already existing virtual environment it will not have any effect, the environment must be deleted and newly created.
        attribute :virtualenv_site_packages
        validates :virtualenv_site_packages, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] The command or a pathname to the command to create the virtual environment with. For example C(pyvenv), C(virtualenv), C(virtualenv2), C(~/bin/virtualenv), C(/usr/local/bin/virtualenv).
        attribute :virtualenv_command
        validates :virtualenv_command, type: String

        # @return [Object, nil] The Python executable used for creating the virtual environment. For example C(python3.5), C(python2.7). When not specified, the Python version used to run the ansible module is used.
        attribute :virtualenv_python

        # @return [:present, :absent, :latest, :forcereinstall, nil] The state of module,The 'forcereinstall' option is only available in Ansible 2.1 and above.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest, :forcereinstall], :message=>"%{value} needs to be :present, :absent, :latest, :forcereinstall"}, allow_nil: true

        # @return [String, nil] Extra arguments passed to pip.
        attribute :extra_args
        validates :extra_args, type: String

        # @return [Boolean, nil] Pass the editable flag for versioning URLs.
        attribute :editable
        validates :editable, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] cd into this directory before running the command
        attribute :chdir

        # @return [String, nil] The explicit executable or a pathname to the executable to be used to run pip for a specific version of Python installed in the system. For example C(pip-3.3), if there are both Python 2.7 and 3.3 installations in the system and you want to run pip for the Python 3.3 installation. It cannot be specified together with the 'virtualenv' parameter (added in 2.1). By default, it will take the appropriate version for the python interpreter use by ansible, e.g. pip3 on python 3, and pip2 or pip on python 2.
        attribute :executable
        validates :executable, type: String

        # @return [String, nil] The system umask to apply before installing the pip package. This is useful, for example, when installing on systems that have a very restrictive umask by default (e.g., 0077) and you want to pip install packages which are to be used by all users. Note that this requires you to specify desired umask mode in octal, with a leading 0 (e.g., 0077).
        attribute :umask
        validates :umask, type: String
      end
    end
  end
end
