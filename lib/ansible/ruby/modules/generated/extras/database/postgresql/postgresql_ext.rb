# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Postgresql_ext < Base
        # @return [String] name of the extension to add or remove
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] name of the database to add or remove the extension to/from
        attribute :db
        validates :db, presence: true, type: String

        # @return [Object] The username used to authenticate with
        attribute :login_user

        # @return [Object] The password used to authenticate with
        attribute :login_password

        # @return [String] Host running the database
        attribute :login_host
        validates :login_host, type: String

        # @return [Fixnum] Database port to connect to.
        attribute :port
        validates :port, type: Fixnum

        # @return [:present, :absent, nil] The database extension state
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
