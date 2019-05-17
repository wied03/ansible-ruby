# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Deploy given repository URL / revision to dest. If dest exists, update to the specified revision, otherwise perform a checkout.
      class Subversion < Base
        # @return [String] The subversion URL to the repository.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] Absolute path where the repository should be deployed.
        attribute :dest
        validates :dest, presence: true, type: String

        # @return [String, nil] Specific revision to checkout.
        attribute :revision
        validates :revision, type: String

        # @return [:yes, :no, nil] If C(yes), modified files will be discarded. If C(no), module will fail if it encounters modified files. Prior to 1.9 the default was C(yes).
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If the directory exists, then the working copy will be checked-out over-the-top using svn checkout --force; if force is specified then existing files with different content are reverted
        attribute :in_place
        validates :in_place, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] C(--username) parameter passed to svn.
        attribute :username

        # @return [Object, nil] C(--password) parameter passed to svn.
        attribute :password

        # @return [Object, nil] Path to svn executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.
        attribute :executable

        # @return [:yes, :no, nil] If C(no), do not check out the repository if it does not exist locally.
        attribute :checkout
        validates :checkout, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), do not retrieve new revisions from the origin repository.
        attribute :update
        validates :update, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(yes), do export instead of checkout/update.
        attribute :export
        validates :export, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), do not call svn switch before update.
        attribute :switch
        validates :switch, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
