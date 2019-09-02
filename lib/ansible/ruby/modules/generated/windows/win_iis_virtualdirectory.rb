# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, Removes and configures a virtual directory in IIS.
      class Win_iis_virtualdirectory < Base
        # @return [String] The name of the virtual directory to create or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Whether to add or remove the specified virtual directory.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String] The site name under which the virtual directory is created or exists.
        attribute :site
        validates :site, presence: true, type: String

        # @return [String, nil] The application under which the virtual directory is created or exists.
        attribute :application
        validates :application, type: String

        # @return [String, nil] The physical path to the folder in which the new virtual directory is created.,The specified folder must already exist.
        attribute :physical_path
        validates :physical_path, type: String
      end
    end
  end
end
