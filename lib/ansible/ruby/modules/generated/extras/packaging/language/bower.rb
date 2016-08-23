# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Bower < Base
        # @return [Object] The name of a bower package to install
        attribute :name

        # @return [Object] Install packages from local cache, if the packages were installed before
        attribute :offline
        validates :offline, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Install with --production flag
        attribute :production
        validates :production, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] The base path where to install the bower packages
        attribute :path
        validates :path, presence: true

        # @return [Object] Relative path to bower executable from install path
        attribute :relative_execpath

        # @return [String] The state of the bower package
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :latest], :message=>"%{value} needs to be :present, :absent, :latest"}, allow_nil: true

        # @return [Object] The version to be installed
        attribute :version
      end
    end
  end
end
