# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Command < Base
        # @return [Object] the command module takes a free form command to run.  There is no parameter actually named 'free form'. See the examples!
        attribute :free_form
        validates :free_form, presence: true

        # @return [String, nil] a filename or (since 2.0) glob pattern, when it already exists, this step will B(not) be run.
        attribute :creates
        validates :creates, type: String

        # @return [Object, nil] a filename or (since 2.0) glob pattern, when it does not exist, this step will B(not) be run.
        attribute :removes

        # @return [String, nil] cd into this directory before running the command
        attribute :chdir
        validates :chdir, type: String

        # @return [Object, nil] change the shell used to execute the command. Should be an absolute path to the executable.
        attribute :executable

        # @return [Boolean, nil] if command warnings are on in ansible.cfg, do not warn about this particular line if set to no/false.
        attribute :warn
        validates :warn, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
