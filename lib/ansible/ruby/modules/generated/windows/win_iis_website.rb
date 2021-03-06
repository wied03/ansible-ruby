# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates, Removes and configures a IIS Web site.
      class Win_iis_website < Base
        # @return [String] Names of web site.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] Explicitly set the IIS numeric ID for a site.,Note that this value cannot be changed after the website has been created.
        attribute :site_id

        # @return [:absent, :started, :stopped, :restarted, nil] State of the web site
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :started, :stopped, :restarted], :message=>"%{value} needs to be :absent, :started, :stopped, :restarted"}, allow_nil: true

        # @return [String, nil] The physical path on the remote host to use for the new site.,The specified folder must already exist.
        attribute :physical_path
        validates :physical_path, type: String

        # @return [String, nil] The application pool in which the new site executes.
        attribute :application_pool
        validates :application_pool, type: String

        # @return [Integer, nil] The port to bind to / use for the new site.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] The IP address to bind to / use for the new site.
        attribute :ip
        validates :ip, type: String

        # @return [String, nil] The host header to bind to / use for the new site.
        attribute :hostname
        validates :hostname, type: String

        # @return [Object, nil] Enables HTTPS binding on the site..
        attribute :ssl

        # @return [String, nil] Custom site Parameters from string where properties are separated by a pipe and property name/values by colon Ex. "foo:1|bar:2"
        attribute :parameters
        validates :parameters, type: String
      end
    end
  end
end
