# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage Perl library dependencies.
      class Cpanm < Base
        # @return [String, nil] The name of the Perl library to install. You may use the "full distribution path", e.g.  MIYAGAWA/Plack-0.99_05.tar.gz
        attribute :name
        validates :name, type: String

        # @return [String, nil] The local directory from where to install
        attribute :from_path
        validates :from_path, type: String

        # @return [:yes, :no, nil] Do not run unit tests
        attribute :notest
        validates :notest, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Specify the install base to install modules
        attribute :locallib
        validates :locallib, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Specifies the base URL for the CPAN mirror to use
        attribute :mirror
        validates :mirror, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Use the mirror's index file instead of the CPAN Meta DB
        attribute :mirror_only
        validates :mirror_only, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Only install dependencies
        attribute :installdeps
        validates :installdeps, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] minimum version of perl module to consider acceptable
        attribute :version
        validates :version, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Use this if you want to install modules to the system perl include path. You must be root or have "passwordless" sudo for this to work.,This uses the cpanm commandline option '--sudo', which has nothing to do with ansible privilege escalation.
        attribute :system_lib
        validates :system_lib, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Override the path to the cpanm executable
        attribute :executable
      end
    end
  end
end
