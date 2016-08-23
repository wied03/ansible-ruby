# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Composer < Base
        # @return [String] Composer command like "install", "update" and so on
        attribute :command
        validates :command, type: String

        # @return [String] Composer arguments like required package, version and so on
        attribute :arguments
        validates :arguments, type: String

        # @return [String] Directory of your project ( see --working-dir )
        attribute :working_dir
        validates :working_dir, presence: true, type: String

        # @return [String] Forces installation from package sources when possible ( see --prefer-source )
        attribute :prefer_source
        validates :prefer_source, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Forces installation from package dist even for dev versions ( see --prefer-dist )
        attribute :prefer_dist
        validates :prefer_dist, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Disables installation of require-dev packages ( see --no-dev )
        attribute :no_dev
        validates :no_dev, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Skips the execution of all scripts defined in composer.json ( see --no-scripts )
        attribute :no_scripts
        validates :no_scripts, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Disables all plugins ( see --no-plugins )
        attribute :no_plugins
        validates :no_plugins, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Optimize autoloader during autoloader dump ( see --optimize-autoloader ). Convert PSR-0/4 autoloading to classmap to get a faster autoloader. This is recommended especially for production, but can take a bit of time to run so it is currently not done by default.
        attribute :optimize_autoloader
        validates :optimize_autoloader, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Ignore php, hhvm, lib-* and ext-* requirements and force the installation even if the local machine does not fulfill these.
        attribute :ignore_platform_reqs
        validates :ignore_platform_reqs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
