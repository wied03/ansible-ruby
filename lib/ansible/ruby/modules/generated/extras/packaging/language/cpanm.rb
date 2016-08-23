# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Cpanm < Base
        # @return [String] The name of the Perl library to install. You may use the "full distribution path", e.g.  MIYAGAWA/Plack-0.99_05.tar.gz
        attribute :name
        validates :name, type: String

        # @return [String] The local directory from where to install
        attribute :from_path
        validates :from_path, type: String

        # @return [String] Do not run unit tests
        attribute :notest
        validates :notest, type: String

        # @return [String] Specify the install base to install modules
        attribute :locallib
        validates :locallib, type: String

        # @return [String] Specifies the base URL for the CPAN mirror to use
        attribute :mirror
        validates :mirror, type: String

        # @return [Object] Use the mirror's index file instead of the CPAN Meta DB
        attribute :mirror_only

        # @return [Object] Only install dependencies
        attribute :installdeps

        # @return [String] minimum version of perl module to consider acceptable
        attribute :version
        validates :version, type: String

        # @return [String] Use this if you want to install modules to the system perl include path. You must be root or have "passwordless" sudo for this to work.,This uses the cpanm commandline option '--sudo', which has nothing to do with ansible privilege escalation.
        attribute :system_lib
        validates :system_lib, type: String

        # @return [Object] Override the path to the cpanm executable
        attribute :executable
      end
    end
  end
end
