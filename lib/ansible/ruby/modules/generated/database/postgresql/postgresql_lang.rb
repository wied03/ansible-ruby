# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds, removes or changes procedural languages with a PostgreSQL database.
      # This module allows you to add a language, remote a language or change the trust relationship with a PostgreSQL database. The module can be used on the machine where executed or on a remote host.
      # When removing a language from a database, it is possible that dependencies prevent the database from being removed. In that case, you can specify casade to automatically drop objects that depend on the language (such as functions in the language). In case the language can't be deleted because it is required by the database system, you can specify fail_on_drop=no to ignore the error.
      # Be carefull when marking a language as trusted since this could be a potential security breach. Untrusted languages allow only users with the PostgreSQL superuser privilege to use this language to create new functions.
      class Postgresql_lang < Base
        # @return [String] name of the procedural language to add, remove or change
        attribute :lang
        validates :lang, presence: true, type: String

        # @return [:yes, :no, nil] make this language trusted for the selected db
        attribute :trust
        validates :trust, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] name of database where the language will be added, removed or changed
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

        # @return [Integer, nil] Database port to connect to.
        attribute :port
        validates :port, type: Integer

        # @return [String, nil] User used to authenticate with PostgreSQL
        attribute :login_user
        validates :login_user, type: String

        # @return [Object, nil] Password used to authenticate with PostgreSQL (must match C(login_user))
        attribute :login_password

        # @return [String, nil] Host running PostgreSQL where you want to execute the actions.
        attribute :login_host
        validates :login_host, type: String

        # @return [:present, :absent, nil] The state of the language for the selected database
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
