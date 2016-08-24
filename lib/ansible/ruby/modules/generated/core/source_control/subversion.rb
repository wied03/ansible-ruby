# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

        # @return [:yes, :no, nil] If C(yes), modified files will be discarded. If C(no), module will fail if it encounters modified files. Prior to 1.9 the default was `yes`.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] --username parameter passed to svn.
        attribute :username

        # @return [Object, nil] --password parameter passed to svn.
        attribute :password

        # @return [Object, nil] Path to svn executable to use. If not supplied, the normal mechanism for resolving binary paths will be used.
        attribute :executable

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
