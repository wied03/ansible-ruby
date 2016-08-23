# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Win_iis_website < Base
        # @return [String] Names of web site
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] Explicitly set the IIS numeric ID for a site. Note that this value cannot be changed after the website has been created.
        attribute :site_id

        # @return [String] State of the web site
        attribute :state
        validates :state, inclusion: {:in=>[:started, :restarted, :stopped, :absent], :message=>"%{value} needs to be :started, :restarted, :stopped, :absent"}, allow_nil: true

        # @return [String] The physical path on the remote host to use for the new site. The specified folder must already exist.
        attribute :physical_path
        validates :physical_path, type: String

        # @return [String] The application pool in which the new site executes.
        attribute :application_pool
        validates :application_pool, type: String

        # @return [Fixnum] The port to bind to / use for the new site.
        attribute :port
        validates :port, type: Fixnum

        # @return [String] The IP address to bind to / use for the new site.
        attribute :ip
        validates :ip, type: String

        # @return [String] The host header to bind to / use for the new site.
        attribute :hostname
        validates :hostname, type: String

        # @return [Object] Enables HTTPS binding on the site..
        attribute :ssl

        # @return [String] Custom site Parameters from string where properties are seperated by a pipe and property name/values by colon Ex. "foo:1|bar:2"
        attribute :parameters
        validates :parameters, type: String
      end
    end
  end
end
