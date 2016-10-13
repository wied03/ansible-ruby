# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove applications on a Webfaction host.  Further documentation at http://github.com/quentinsf/ansible-webfaction.
      class Webfaction_app < Base
        # @return [String] The name of the application
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the application should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [String] The type of application to create. See the Webfaction docs at http://docs.webfaction.com/xmlrpc-api/apps.html for a list.
        attribute :type
        validates :type, presence: true, type: String

        # @return [String, nil] Whether the app should restart with an autostart.cgi script
        attribute :autostart
        validates :autostart, type: String

        # @return [Object, nil] Any extra parameters required by the app
        attribute :extra_info

        # @return [Boolean, nil] IF the port should be opened
        attribute :port_open
        validates :port_open, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String] The webfaction account to use
        attribute :login_name
        validates :login_name, presence: true, type: String

        # @return [String] The webfaction password to use
        attribute :login_password
        validates :login_password, presence: true, type: String

        # @return [String, nil] The machine name to use (optional for accounts with only one machine)
        attribute :machine
        validates :machine, type: String
      end
    end
  end
end
