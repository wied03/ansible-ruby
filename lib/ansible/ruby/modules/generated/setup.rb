# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Setup < Base
        # @return [String] if supplied, restrict the additional facts collected to the given subset. Possible values: all, hardware, network, virtual, ohai, and facter Can specify a list of values to specify a larger subset. Values can also be used with an initial C(!) to specify that that specific subset should not be collected.  For instance: !hardware, !network, !virtual, !ohai, !facter.  Note that a few facts are always collected.  Use the filter parameter if you do not want to display those.
        attribute :gather_subset
        validates :gather_subset, type: String

        # @return [String] if supplied, only return facts that match this shell-style (fnmatch) wildcard.
        attribute :filter
        validates :filter, type: String

        # @return [String] path used for local ansible facts (*.fact) - files in this dir will be run (if executable) and their results be added to ansible_local facts if a file is not executable it is read. Check notes for Windows options. (from 2.1 on) File/results format can be json or ini-format
        attribute :fact_path
        validates :fact_path, type: String
      end
    end
  end
end
