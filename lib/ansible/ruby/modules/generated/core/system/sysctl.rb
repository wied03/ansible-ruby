# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module manipulates sysctl entries and optionally performs a C(/sbin/sysctl -p) after changing them.
      class Sysctl < Base
        # @return [String] The dot-separated path (aka I(key)) specifying the sysctl variable.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, String, nil] Desired value of the sysctl key.
        attribute :value
        validates :value, type: MultipleTypes.new(Integer, String)

        # @return [:present, :absent, nil] Whether the entry should be present or absent in the sysctl file.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Boolean, nil] Use this option to ignore errors about unknown keys.
        attribute :ignoreerrors
        validates :ignoreerrors, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [:yes, :no, nil] If C(yes), performs a I(/sbin/sysctl -p) if the C(sysctl_file) is updated. If C(no), does not reload I(sysctl) even if the C(sysctl_file) is updated.
        attribute :reload
        validates :reload, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Specifies the absolute path to C(sysctl.conf), if not C(/etc/sysctl.conf).
        attribute :sysctl_file
        validates :sysctl_file, type: String

        # @return [Boolean, nil] Verify token value with the sysctl command and set with -w if necessary
        attribute :sysctl_set
        validates :sysctl_set, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
