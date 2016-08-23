# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rabbitmq_user < Base
        # @return [String] Name of user to add
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Password of user to add.,To change the password of an existing user, you must also specify C(force=yes).
        attribute :password
        validates :password, type: String

        # @return [Object] User tags specified as comma delimited
        attribute :tags

        # @return [Array] a list of dicts, each dict contains vhost, configure_priv, write_priv, and read_priv, and represents a permission rule for that vhost.,This option should be preferable when you care about all permissions of the user.,You should use vhost, configure_priv, write_priv, and read_priv options instead if you care about permissions for just some vhosts.
        attribute :permissions
        validates :permissions, type: Array

        # @return [String] vhost to apply access privileges.,This option will be ignored when permissions option is used.
        attribute :vhost
        validates :vhost, type: String

        # @return [String] erlang node name of the rabbit we wish to configure
        attribute :node
        validates :node, type: String

        # @return [String] Regular expression to restrict configure actions on a resource for the specified vhost.,By default all actions are restricted.,This option will be ignored when permissions option is used.
        attribute :configure_priv
        validates :configure_priv, type: String

        # @return [String] Regular expression to restrict configure actions on a resource for the specified vhost.,By default all actions are restricted.,This option will be ignored when permissions option is used.
        attribute :write_priv
        validates :write_priv, type: String

        # @return [String] Regular expression to restrict configure actions on a resource for the specified vhost.,By default all actions are restricted.,This option will be ignored when permissions option is used.
        attribute :read_priv
        validates :read_priv, type: String

        # @return [:yes, :no, nil] Deletes and recreates the user.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Specify if user is to be added or removed
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
