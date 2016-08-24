# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Webfaction_db < Base
        # @return [String] The name of the database
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether the database should exist
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:mysql, :postgresql] The type of database to create.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:mysql, :postgresql], :message=>"%{value} needs to be :mysql, :postgresql"}

        # @return [String, nil] The password for the new database user.
        attribute :password
        validates :password, type: String

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
