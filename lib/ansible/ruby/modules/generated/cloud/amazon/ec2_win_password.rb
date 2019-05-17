# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Gets the default administrator password from any EC2 Windows instance. The instance is referenced by its id (e.g. C(i-XXXXXXX)). This module has a dependency on python-boto.
      class Ec2_win_password < Base
        # @return [String] The instance id to get the password data from.
        attribute :instance_id
        validates :instance_id, presence: true, type: String

        # @return [String] Path to the file containing the key pair used on the instance.
        attribute :key_file
        validates :key_file, presence: true, type: String

        # @return [String, nil] The passphrase for the instance key pair. The key must use DES or 3DES encryption for this module to decrypt it. You can use openssl to convert your password protected keys if they do not use DES or 3DES. ex) C(openssl rsa -in current_key -out new_key -des3).
        attribute :key_passphrase
        validates :key_passphrase, type: String

        # @return [:yes, :no, nil] Whether or not to wait for the password to be available before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Number of seconds to wait before giving up.
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
