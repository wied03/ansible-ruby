# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Puppet < Base
        # @return [String] How long to wait for I(puppet) to finish.
        attribute :timeout
        validates :timeout, type: String

        # @return [String] The hostname of the puppetmaster to contact.
        attribute :puppetmaster
        validates :puppetmaster, type: String

        # @return [String] Path to the manifest file to run puppet apply on.
        attribute :manifest
        validates :manifest, type: String

        # @return [String] A dict of values to pass in as persistent external facter facts
        attribute :facts
        validates :facts, type: String

        # @return [String] Basename of the facter output file
        attribute :facter_basename
        validates :facter_basename, type: String

        # @return [String] Puppet environment to be used.
        attribute :environment
        validates :environment, type: String

        # @return [:stdout, :syslog, nil] Where the puppet logs should go, if puppet apply is being used
        attribute :logdest
        validates :logdest, inclusion: {:in=>[:stdout, :syslog], :message=>"%{value} needs to be :stdout, :syslog"}, allow_nil: true

        # @return [String] The name to use when handling certificates.
        attribute :certname
        validates :certname, type: String

        # @return [String] A comma-separated list of puppet tags to be used.
        attribute :tags
        validates :tags, type: String

        # @return [String] Execute a specific piece of Puppet code. It has no effect with a puppetmaster.
        attribute :execute
        validates :execute, type: String
      end
    end
  end
end
