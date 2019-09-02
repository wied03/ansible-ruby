# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages a Django application using the I(manage.py) application frontend to I(django-admin). With the I(virtualenv) parameter, all management commands will be executed by the given I(virtualenv) installation.
      class Django_manage < Base
        # @return [:cleanup, :collectstatic, :flush, :loaddata, :migrate, :runfcgi, :syncdb, :test, :validate] The name of the Django management command to run. Built in commands are cleanup, collectstatic, flush, loaddata, migrate, runfcgi, syncdb, test, and validate.,Other commands can be entered, but will fail if they're unknown to Django.  Other commands that may prompt for user input should be run with the I(--noinput) flag.
        attribute :command
        validates :command, presence: true, expression_inclusion: {:in=>[:cleanup, :collectstatic, :flush, :loaddata, :migrate, :runfcgi, :syncdb, :test, :validate], :message=>"%{value} needs to be :cleanup, :collectstatic, :flush, :loaddata, :migrate, :runfcgi, :syncdb, :test, :validate"}

        # @return [String] The path to the root of the Django application where B(manage.py) lives.
        attribute :app_path
        validates :app_path, presence: true, type: String

        # @return [String, nil] The Python path to the application's settings module, such as 'myapp.settings'.
        attribute :settings
        validates :settings, type: String

        # @return [String, nil] A directory to add to the Python path. Typically used to include the settings module if it is located external to the application directory.
        attribute :pythonpath
        validates :pythonpath, type: String

        # @return [String, nil] An optional path to a I(virtualenv) installation to use while running the manage application.
        attribute :virtualenv
        validates :virtualenv, type: String

        # @return [String, nil] A list of space-delimited apps to target. Used by the 'test' command.
        attribute :apps
        validates :apps, type: String

        # @return [Object, nil] The name of the table used for database-backed caching. Used by the 'createcachetable' command.
        attribute :cache_table

        # @return [Symbol, nil] Clear the existing files before trying to copy or link the original file.,Used only with the 'collectstatic' command. The C(--noinput) argument will be added automatically.
        attribute :clear
        validates :clear, type: Symbol

        # @return [Object, nil] The database to target. Used by the 'createcachetable', 'flush', 'loaddata', and 'syncdb' commands.
        attribute :database

        # @return [:yes, :no, nil] Fail the command immediately if a test fails. Used by the 'test' command.
        attribute :failfast
        validates :failfast, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] A space-delimited list of fixture file names to load in the database. B(Required) by the 'loaddata' command.
        attribute :fixtures
        validates :fixtures, type: String

        # @return [Object, nil] Will skip over out-of-order missing migrations, you can only use this parameter with I(migrate)
        attribute :skip

        # @return [Object, nil] Will run out-of-order or missing migrations as they are not rollback migrations, you can only use this parameter with 'migrate' command
        attribute :merge

        # @return [Object, nil] Will create links to the files instead of copying them, you can only use this parameter with 'collectstatic' command
        attribute :link
      end
    end
  end
end
