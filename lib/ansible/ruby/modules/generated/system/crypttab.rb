# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Control Linux encrypted block devices that are set up during system boot in C(/etc/crypttab).
      class Crypttab < Base
        # @return [String] Name of the encrypted block device as it appears in the C(/etc/crypttab) file, or optionally prefixed with C(/dev/mapper/), as it appears in the filesystem. I(/dev/mapper/) will be stripped from I(name).
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :opts_absent, :opts_present, :present] Use I(present) to add a line to C(/etc/crypttab) or update it's definition if already present. Use I(absent) to remove a line with matching I(name). Use I(opts_present) to add options to those already present; options with different values will be updated. Use I(opts_absent) to remove options from the existing set.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:absent, :opts_absent, :opts_present, :present], :message=>"%{value} needs to be :absent, :opts_absent, :opts_present, :present"}

        # @return [Object, nil] Path to the underlying block device or file, or the UUID of a block-device prefixed with I(UUID=).
        attribute :backing_device

        # @return [String, nil] Encryption password, the path to a file containing the password, or C(none) or C(-) if the password should be entered at boot.
        attribute :password
        validates :password, type: String

        # @return [Array<String>, String, nil] A comma-delimited list of options. See C(crypttab(5) ) for details.
        attribute :opts
        validates :opts, type: TypeGeneric.new(String)

        # @return [String, nil] Path to file to use instead of C(/etc/crypttab). This might be useful in a chroot environment.
        attribute :path
        validates :path, type: String
      end
    end
  end
end
