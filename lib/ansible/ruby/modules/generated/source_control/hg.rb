# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Mercurial (hg) repositories. Supports SSH, HTTP/S and local address.
      class Hg < Base
        # @return [String] The repository address.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] Absolute path of where the repository should be cloned to. This parameter is required, unless clone and update are set to no
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] Equivalent C(-r) option in hg command which could be the changeset, revision number, branch name or even tag.
        attribute :revision
        validates :revision, type: String

        # @return [:yes, :no, nil] Discards uncommitted changes. Runs C(hg update -C).  Prior to 1.9, the default was `yes`.
        attribute :force
        validates :force, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Deletes untracked files. Runs C(hg purge).
        attribute :purge
        validates :purge, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), do not retrieve new revisions from the origin repository
        attribute :update
        validates :update, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), do not clone the repository if it does not exist locally.
        attribute :clone
        validates :clone, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Path to hg executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.
        attribute :executable
      end
    end
  end
end
