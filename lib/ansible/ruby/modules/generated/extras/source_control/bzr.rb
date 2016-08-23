# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bzr < Base
        # @return [String] SSH or HTTP protocol address of the parent branch.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Absolute path of where the branch should be cloned to.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] What version of the branch to clone.  This can be the bzr revno or revid.
        attribute :version
        validates :version, type: String

        # @return [:yes, :no, nil] If C(yes), any modified files in the working tree will be discarded.  Before 1.9 the default value was "yes".
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Path to bzr executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.
        attribute :executable
      end
    end
  end
end
