# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Postgresql_lang < Base
        # @return [String] name of the procedural language to add, remove or change
        attribute :lang
        validates :lang, presence: true, type: String

        # @return [:yes, :no, nil] make this language trusted for the selected db
        attribute :trust
        validates :trust, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] name of database where the language will be added, removed or changed
        attribute :db
        validates :db, type: String

        # @return [:yes, :no, nil] marks the language as trusted, even if it's marked as untrusted in pg_pltemplate.,use with care!
        attribute :force_trust
        validates :force_trust, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] if C(yes), fail when removing a language. Otherwise just log and continue,in some cases, it is not possible to remove a language (used by the db-system). When         dependencies block the removal, consider using C(cascade).
        attribute :fail_on_drop
        validates :fail_on_drop, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] when dropping a language, also delete object that depend on this language.,only used when C(state=absent).
        attribute :cascade
        validates :cascade, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] Database port to connect to.
        attribute :port
        validates :port, type: Fixnum

        # @return [String] User used to authenticate with PostgreSQL
        attribute :login_user
        validates :login_user, type: String

        # @return [Object] Password used to authenticate with PostgreSQL (must match C(login_user))
        attribute :login_password

        # @return [String] Host running PostgreSQL where you want to execute the actions.
        attribute :login_host
        validates :login_host, type: String

        # @return [:present, :absent, nil] The state of the language for the selected database
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
