# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows configuring of the BIG-IP to send mail via an SMTP server by configuring the parameters of an SMTP server.
      class Bigip_smtp < Base
        # @return [String] Specifies the name of the SMTP server configuration.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [String, nil] SMTP server host name in the format of a fully qualified domain name.,This value is required when create a new SMTP configuration.
        attribute :smtp_server
        validates :smtp_server, type: String

        # @return [Object, nil] Specifies the SMTP port number.,When creating a new SMTP configuration, the default is C(25) when C(encryption) is C(none) or C(tls). The default is C(465) when C(ssl) is selected.
        attribute :smtp_server_port

        # @return [String, nil] Host name used in SMTP headers in the format of a fully qualified domain name. This setting does not refer to the BIG-IP system's hostname.
        attribute :local_host_name
        validates :local_host_name, type: String

        # @return [String, nil] Email address that the email is being sent from. This is the "Reply-to" address that the recipient sees.
        attribute :from_address
        validates :from_address, type: String

        # @return [:none, :ssl, :tls, nil] Specifies whether the SMTP server requires an encrypted connection in order to send mail.
        attribute :encryption
        validates :encryption, inclusion: {:in=>[:none, :ssl, :tls], :message=>"%{value} needs to be :none, :ssl, :tls"}, allow_nil: true

        # @return [Object, nil] Credentials can be set on an SMTP server's configuration even if that authentication is not used (think staging configs or emergency changes). This parameter acts as a switch to make the specified C(smtp_server_username) and C(smtp_server_password) parameters active or not.,When C(yes), the authentication parameters will be active.,When C(no), the authentication parameters will be inactive.
        attribute :authentication

        # @return [String, nil] User name that the SMTP server requires when validating a user.
        attribute :smtp_server_username
        validates :smtp_server_username, type: String

        # @return [String, nil] Password that the SMTP server requires when validating a user.
        attribute :smtp_server_password
        validates :smtp_server_password, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the SMTP configuration exists.,When C(absent), ensures that the SMTP configuration does not exist.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:always, :on_create, nil] Passwords are stored encrypted, so the module cannot know if the supplied C(smtp_server_password) is the same or different than the existing password. This parameter controls the updating of the C(smtp_server_password) credential.,When C(always), will always update the password.,When C(on_create), will only set the password for newly created SMTP server configurations.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end
