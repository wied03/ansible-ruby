# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_iis_virtualdirectory < Base
        # @return [Object] The name of the virtual directory to create or remove
        attribute :name
        validates :name, presence: true

        # @return [:absent, :present, nil] Whether to add or remove the specified virtual directory
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Object] The site name under which the virtual directory is created or exists.
        attribute :site
        validates :site, presence: true

        # @return [Object] The application under which the virtual directory is created or exists.
        attribute :application

        # @return [Object] The physical path to the folder in which the new virtual directory is created. The specified folder must already exist.
        attribute :physical_path
      end
    end
  end
end
