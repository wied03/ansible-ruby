# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, removes, and configures IIS web applications.
      class Win_iis_webapplication < Base
        # @return [String] Name of the web application.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Name of the site on which the application is created.
        attribute :site
        validates :site, presence: true, type: String

        # @return [:absent, :present, nil] State of the web application.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The physical path on the remote host to use for the new application.,The specified folder must already exist.
        attribute :physical_path
        validates :physical_path, type: String

        # @return [Object, nil] The application pool in which the new site executes.
        attribute :application_pool
      end
    end
  end
end
