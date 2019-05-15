# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the containers on the atomic host platform
      # Allows to manage the lifecycle of a container on the atomic host platform
      class Atomic_container < Base
        # @return [:docker, :ostree] Define the backend to use for the container
        attribute :backend
        validates :backend, presence: true, inclusion: {:in=>[:docker, :ostree], :message=>"%{value} needs to be :docker, :ostree"}

        # @return [String] Name of the container
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The image to use to install the container
        attribute :image
        validates :image, presence: true, type: String

        # @return [Object, nil] Define the rootfs of the image
        attribute :rootfs

        # @return [:latest, :present, :absent, :rollback] State of the container
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:latest, :present, :absent, :rollback], :message=>"%{value} needs to be :latest, :present, :absent, :rollback"}

        # @return [:user, :system] Define if it is an user or a system container
        attribute :mode
        validates :mode, presence: true, inclusion: {:in=>[:user, :system], :message=>"%{value} needs to be :user, :system"}

        # @return [Array<String>, String, nil] Values for the installation of the container.  This option is permitted only with mode 'user' or 'system'. The values specified here will be used at installation time as --set arguments for atomic install.
        attribute :values
        validates :values, type: TypeGeneric.new(String)
      end
    end
  end
end
