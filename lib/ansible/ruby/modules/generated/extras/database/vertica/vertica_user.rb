# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Vertica_user < Base
        # @return [String] Name of the user to add or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] Sets the user's profile.
        attribute :profile

        # @return [Object] Sets the user's resource pool.
        attribute :resource_pool

        # @return [String] The user's password encrypted by the MD5 algorithm.,The password must be generated with the format C("md5" + md5[password + username]), resulting in a total of 35 characters. An easy way to do this is by querying the Vertica database with select 'md5'||md5('<user_password><user_name>').
        attribute :password
        validates :password, type: String

        # @return [Object] Sets the user's password expiration.
        attribute :expired

        # @return [String] Set to true if users are authenticated via LDAP.,The user will be created with password expired and set to I($ldap$).
        attribute :ldap
        validates :ldap, type: String

        # @return [String] Comma separated list of roles to assign to the user.
        attribute :roles
        validates :roles, type: String

        # @return [:present, :absent, :locked, nil] Whether to create C(present), drop C(absent) or lock C(locked) a user.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :locked], :message=>"%{value} needs to be :present, :absent, :locked"}, allow_nil: true

        # @return [String] Name of the Vertica database.
        attribute :db
        validates :db, type: String

        # @return [String] Name of the Vertica cluster.
        attribute :cluster
        validates :cluster, type: String

        # @return [Fixnum] Vertica cluster port to connect to.
        attribute :port
        validates :port, type: Fixnum

        # @return [String] The username used to authenticate with.
        attribute :login_user
        validates :login_user, type: String

        # @return [Object] The password used to authenticate with.
        attribute :login_password
      end
    end
  end
end
