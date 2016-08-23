# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Htpasswd < Base
        # @return [String] Path to the file that contains the usernames and passwords
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] User name to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Password associated with user.,Must be specified if user does not exist yet.
        attribute :password
        validates :password, type: String

        # @return [:apr_md5_crypt, :des_crypt, :ldap_sha1, :plaintext, nil] Encryption scheme to be used.  As well as the four choices listed here, you can also use any other hash supported by passlib, such as md5_crypt and sha256_crypt, which are linux passwd hashes.  If you do so the password file will not be compatible with Apache or Nginx
        attribute :crypt_scheme
        validates :crypt_scheme, inclusion: {:in=>[:apr_md5_crypt, :des_crypt, :ldap_sha1, :plaintext], :message=>"%{value} needs to be :apr_md5_crypt, :des_crypt, :ldap_sha1, :plaintext"}, allow_nil: true

        # @return [:present, :absent, nil] Whether the user entry should be present or not
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Used with C(state=present). If specified, the file will be created if it does not already exist. If set to "no", will fail if the file does not exist
        attribute :create
        validates :create, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
