# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Starts gunicorn with the parameters specified. Common settings for gunicorn configuration are supported. For additional configuration use a config file See U(https://gunicorn-docs.readthedocs.io/en/latest/settings.html) for more options. It's recommended to always use the chdir option to avoid problems with the location of the app.
      class Gunicorn < Base
        # @return [String] The app module. A name refers to a WSGI callable that should be found in the specified module.
        attribute :app
        validates :app, presence: true, type: String

        # @return [String, nil] Path to the virtualenv directory.
        attribute :venv
        validates :venv, type: String

        # @return [Object, nil] Path to the gunicorn configuration file.
        attribute :config

        # @return [String, nil] Chdir to specified directory before apps loading.
        attribute :chdir
        validates :chdir, type: String

        # @return [String, nil] A filename to use for the PID file. If not set and not found on the configuration file a tmp pid file will be created to check a successful run of gunicorn.
        attribute :pid
        validates :pid, type: String

        # @return [:sync, :eventlet, :gevent, :"tornado ", :gthread, :gaiohttp, nil] The type of workers to use. The default class (sync) should handle most "normal" types of workloads.
        attribute :worker
        validates :worker, inclusion: {:in=>[:sync, :eventlet, :gevent, :"tornado ", :gthread, :gaiohttp], :message=>"%{value} needs to be :sync, :eventlet, :gevent, :\"tornado \", :gthread, :gaiohttp"}, allow_nil: true

        # @return [String, nil] Switch worker processes to run as this user.
        attribute :user
        validates :user, type: String
      end
    end
  end
end
