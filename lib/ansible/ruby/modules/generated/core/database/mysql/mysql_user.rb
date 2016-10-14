# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes a user from a MySQL database.
      class Mysql_user < Base
        # @return [String] name of the user (role) to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] set the user's password.
        attribute :password
        validates :password, type: String

        # @return [:yes, :no, nil] Indicate that the 'password' field is a `mysql_native_password` hash
        attribute :encrypted
        validates :encrypted, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] the 'host' part of the MySQL username
        attribute :host
        validates :host, type: String

        # @return [:yes, :no, nil] override the host option, making ansible apply changes to all hostnames for a given user.  This option cannot be used when creating users
        attribute :host_all
        validates :host_all, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Array<String>, String, nil] MySQL privileges string in the format: C(db.table:priv1,priv2)
        attribute :priv
        validates :priv, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Append the privileges defined by priv to the existing ones for this user instead of overwriting existing ones.
        attribute :append_privs
        validates :append_privs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether binary logging should be enabled or disabled for the connection.
        attribute :sql_log_bin
        validates :sql_log_bin, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Whether the user should exist.  When C(absent), removes the user.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Check if mysql allows login as root/nopassword before trying supplied credentials.
        attribute :check_implicit_admin
        validates :check_implicit_admin, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:always, :on_create, nil] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true
      end
    end
  end
end
