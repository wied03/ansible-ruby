# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Composer is a tool for dependency management in PHP. It allows you to declare the dependent libraries your project needs and it will install them in your project for you.

      class Composer < Base
        # @return [String, nil] Composer command like "install", "update" and so on.
        attribute :command
        validates :command, type: String

        # @return [String, nil] Composer arguments like required package, version and so on.
        attribute :arguments
        validates :arguments, type: String

        # @return [String] Directory of your project (see --working-dir).
        attribute :working_dir
        validates :working_dir, presence: true, type: String

        # @return [Boolean, nil] Forces installation from package sources when possible (see --prefer-source).
        attribute :prefer_source
        validates :prefer_source, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Forces installation from package dist even for dev versions (see --prefer-dist).
        attribute :prefer_dist
        validates :prefer_dist, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Disables installation of require-dev packages (see --no-dev).
        attribute :no_dev
        validates :no_dev, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Skips the execution of all scripts defined in composer.json (see --no-scripts).
        attribute :no_scripts
        validates :no_scripts, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Disables all plugins ( see --no-plugins ).
        attribute :no_plugins
        validates :no_plugins, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Optimize autoloader during autoloader dump (see --optimize-autoloader).,Convert PSR-0/4 autoloading to classmap to get a faster autoloader.,Recommended especially for production, but can take a bit of time to run so it is currently not done by default.
        attribute :optimize_autoloader
        validates :optimize_autoloader, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Ignore php, hhvm, lib-* and ext-* requirements and force the installation even if the local machine does not fulfill these.
        attribute :ignore_platform_reqs
        validates :ignore_platform_reqs, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
