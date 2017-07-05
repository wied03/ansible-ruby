# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Interface to the Network Command Line Utility, developed to make it easier to configure operating systems running ifupdown2 and Quagga, such as Cumulus Linux. Command documentation is available at U(https://docs.cumulusnetworks.com/display/DOCS/Network+Command+Line+Utility)
      class Nclu < Base
        # @return [Array<String>, String, nil] A list of strings containing the net commands to run. Mutually exclusive with I(template).
        attribute :commands
        validates :commands, type: TypeGeneric.new(String)

        # @return [Array<String>, String, nil] A single, multi-line string with jinja2 formatting. This string will be broken by lines, and each line will be run through net. Mutually exclusive with I(commands).
        attribute :template
        validates :template, type: TypeGeneric.new(String)

        # @return [Boolean, nil] When true, performs a 'net commit' at the end of the block. Mutually exclusive with I(atomic).
        attribute :commit
        validates :commit, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] Boolean. When true, perform a 'net abort' before the block. This cleans out any uncommitted changes in the buffer. Mutually exclusive with I(atomic).
        attribute :abort
        validates :abort, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] When true, equivalent to both I(commit) and I(abort) being true. Mutually exclusive with I(commit) and I(atomic).
        attribute :atomic
        validates :atomic, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] Commit description that will be recorded to the commit log if I(commit) or I(atomic) are true.
        attribute :description
        validates :description, type: String
      end
    end
  end
end
