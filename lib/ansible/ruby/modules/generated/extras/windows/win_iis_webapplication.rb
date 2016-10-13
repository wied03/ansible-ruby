# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, Removes and configures a IIS Web applications
      class Win_iis_webapplication < Base
        # @return [Object] Name of the Web applicatio
        attribute :name
        validates :name, presence: true

        # @return [Object] Name of the site on which the application is created.
        attribute :site
        validates :site, presence: true

        # @return [:present, :absent, nil] State of the web application
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] The physical path on the remote host to use for the new applicatiojn. The specified folder must already exist.
        attribute :physical_path

        # @return [Object, nil] The application pool in which the new site executes.
        attribute :application_pool
      end
    end
  end
end
