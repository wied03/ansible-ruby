# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Django_manage < Base
        # @return [String] The name of the Django management command to run. Built in commands are cleanup, collectstatic, flush, loaddata, migrate, runfcgi, syncdb, test, and validate.,Other commands can be entered, but will fail if they're unknown to Django.  Other commands that may prompt for user input should be run with the I(--noinput) flag.
        attribute :command
        validates :command, presence: true, inclusion: {:in=>[:cleanup, :collectstatic, :flush, :loaddata, :migrate, :runfcgi, :syncdb, :test, :validate], :message=>"%{value} needs to be :cleanup, :collectstatic, :flush, :loaddata, :migrate, :runfcgi, :syncdb, :test, :validate"}

        # @return [String] The path to the root of the Django application where B(manage.py) lives.
        attribute :app_path
        validates :app_path, presence: true, type: String

        # @return [String] The Python path to the application's settings module, such as 'myapp.settings'.
        attribute :settings
        validates :settings, type: String

        # @return [String] A directory to add to the Python path. Typically used to include the settings module if it is located external to the application directory.
        attribute :pythonpath
        validates :pythonpath, type: String

        # @return [String] An optional path to a I(virtualenv) installation to use while running the manage application.
        attribute :virtualenv
        validates :virtualenv, type: String

        # @return [String] A list of space-delimited apps to target. Used by the 'test' command.
        attribute :apps
        validates :apps, type: String

        # @return [Object] The name of the table used for database-backed caching. Used by the 'createcachetable' command.
        attribute :cache_table

        # @return [Object] The database to target. Used by the 'createcachetable', 'flush', 'loaddata', and 'syncdb' commands.
        attribute :database

        # @return [String] Fail the command immediately if a test fails. Used by the 'test' command.
        attribute :failfast
        validates :failfast, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] A space-delimited list of fixture file names to load in the database. B(Required) by the 'loaddata' command.
        attribute :fixtures
        validates :fixtures, type: String

        # @return [Object] Will skip over out-of-order missing migrations, you can only use this parameter with I(migrate)
        attribute :skip

        # @return [Object] Will run out-of-order or missing migrations as they are not rollback migrations, you can only use this parameter with 'migrate' command
        attribute :merge

        # @return [Object] Will create links to the files instead of copying them, you can only use this parameter with 'collectstatic' command
        attribute :link
      end
    end
  end
end
