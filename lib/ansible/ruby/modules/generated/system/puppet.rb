# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Runs I(puppet) agent or apply in a reliable manner.
      class Puppet < Base
        # @return [String, nil] How long to wait for I(puppet) to finish.
        attribute :timeout
        validates :timeout, type: String

        # @return [Object, nil] The hostname of the puppetmaster to contact.
        attribute :puppetmaster

        # @return [String, nil] Path to an alternate location for puppet modules.
        attribute :modulepath
        validates :modulepath, type: String

        # @return [String, nil] Path to the manifest file to run puppet apply on.
        attribute :manifest
        validates :manifest, type: String

        # @return [Object, nil] A dict of values to pass in as persistent external facter facts.
        attribute :facts

        # @return [String, nil] Basename of the facter output file.
        attribute :facter_basename
        validates :facter_basename, type: String

        # @return [String, nil] Puppet environment to be used.
        attribute :environment
        validates :environment, type: String

        # @return [:stdout, :syslog, :all, nil] Where the puppet logs should go, if puppet apply is being used. C(all)\r\nwill go to both C(stdout) and C(syslog).\r\n
        attribute :logdest
        validates :logdest, expression_inclusion: {:in=>[:stdout, :syslog, :all], :message=>"%{value} needs to be :stdout, :syslog, :all"}, allow_nil: true

        # @return [String, nil] The name to use when handling certificates.
        attribute :certname
        validates :certname, type: String

        # @return [Array<String>, String, nil] A comma-separated list of puppet tags to be used.
        attribute :tags
        validates :tags, type: TypeGeneric.new(String)

        # @return [String, nil] Execute a specific piece of Puppet code.,It has no effect with a puppetmaster.
        attribute :execute
        validates :execute, type: String

        # @return [Object, nil] Whether to print a transaction summary
        attribute :summarize

        # @return [Object, nil] Print extra information
        attribute :verbose

        # @return [Object, nil] Enable full debugging
        attribute :debug
      end
    end
  end
end
