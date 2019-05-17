# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Get/Add/Edit Delete Users from WTI OOB and PDU devices
      class Cpm_user < Base
        # @return [:getuser, :adduser, :edituser, :deleteuser] This is the Action to send the module.
        attribute :cpm_action
        validates :cpm_action, presence: true, inclusion: {:in=>[:getuser, :adduser, :edituser, :deleteuser], :message=>"%{value} needs to be :getuser, :adduser, :edituser, :deleteuser"}

        # @return [String] This is the URL of the WTI device to send the module.
        attribute :cpm_url
        validates :cpm_url, presence: true, type: String

        # @return [String] This is the Basic Authentication Username of the WTI device to send the module.
        attribute :cpm_username
        validates :cpm_username, presence: true, type: String

        # @return [String] This is the Basic Authentication Password of the WTI device to send the module.
        attribute :cpm_password
        validates :cpm_password, presence: true, type: String

        # @return [Boolean, nil] Designates to use an https connection or http connection.
        attribute :use_https
        validates :use_https, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] If false, SSL certificates will not be validated. This should only be used,on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Symbol, nil] Flag to control if the lookup will observe HTTP proxy environment variables when present.
        attribute :use_proxy
        validates :use_proxy, type: Symbol

        # @return [String] This is the User Name that needs to be create/modified/deleted
        attribute :user_name
        validates :user_name, presence: true, type: String

        # @return [String, nil] This is the User Password that needs to be create/modified/deleted,If the user is being Created this parameter is required
        attribute :user_pass
        validates :user_pass, type: String

        # @return [0, 1, 2, 3, nil] This is the access level that needs to be create/modified/deleted,0 View, 1 User, 2 SuperUser, 3 Adminstrator
        attribute :user_accesslevel
        validates :user_accesslevel, inclusion: {:in=>[0, 1, 2, 3], :message=>"%{value} needs to be 0, 1, 2, 3"}, allow_nil: true

        # @return [0, 1, nil] If the user has access to the WTI device via SSH,0 No , 1 Yes
        attribute :user_accessssh
        validates :user_accessssh, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] If the user has access to the WTI device via Serial ports,0 No , 1 Yes
        attribute :user_accessserial
        validates :user_accessserial, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] If the user has access to the WTI device via Web,0 No , 1 Yes
        attribute :user_accessweb
        validates :user_accessweb, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] If the user has access to the WTI device via RESTful APIs,0 No , 1 Yes
        attribute :user_accessapi
        validates :user_accessapi, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] If the user has ability to monitor connection sessions,0 No , 1 Yes
        attribute :user_accessmonitor
        validates :user_accessmonitor, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [0, 1, nil] If the user has ability to initiate Outbound connection,0 No , 1 Yes
        attribute :user_accessoutbound
        validates :user_accessoutbound, inclusion: {:in=>[0, 1], :message=>"%{value} needs to be 0, 1"}, allow_nil: true

        # @return [String, nil] If AccessLevel is lower than Administrator, which ports the user has access
        attribute :user_portaccess
        validates :user_portaccess, type: String

        # @return [String, nil] If AccessLevel is lower than Administrator, which plugs the user has access
        attribute :user_plugaccess
        validates :user_plugaccess, type: String

        # @return [String, nil] If AccessLevel is lower than Administrator, which Groups the user has access
        attribute :user_groupaccess
        validates :user_groupaccess, type: String

        # @return [Object, nil] This is the Call Back phone number used for POTS modem connections
        attribute :user_callbackphone
      end
    end
  end
end
