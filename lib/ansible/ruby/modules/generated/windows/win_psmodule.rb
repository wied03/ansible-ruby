# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module helps to install Powershell modules and register custom modules repository on Windows Server.
      class Win_psmodule < Base
        # @return [String] Name of the powershell module that has to be installed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:yes, :no, nil] If C(yes) imports all commands, even if they have the same names as commands that already exists. Available only in Powershell 5.1 or higher.
        attribute :allow_clobber
        validates :allow_clobber, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Name of the custom repository to register or use.
        attribute :repository
        validates :repository, type: String

        # @return [String, nil] URL of the custom repository to register.
        attribute :url
        validates :url, type: String

        # @return [:absent, :present, nil] If C(present) a new module is installed.,If C(absent) a module is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
