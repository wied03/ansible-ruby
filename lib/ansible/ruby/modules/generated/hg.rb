# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Hg < Base
        # @return [String] The repository address.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] Absolute path of where the repository should be cloned to.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String] Equivalent C(-r) option in hg command which could be the changeset, revision number, branch name or even tag.
        attribute :revision
        validates :revision, type: String

        # @return [String] Discards uncommitted changes. Runs C(hg update -C).  Prior to 1.9, the default was `yes`.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Deletes untracked files. Runs C(hg purge).
        attribute :purge
        validates :purge, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] If C(no), do not retrieve new revisions from the origin repository
        attribute :update
        validates :update, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Path to hg executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.
        attribute :executable
      end
    end
  end
end
