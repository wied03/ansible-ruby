# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage the container images on the atomic host platform.
      # Allows to execute the commands specified by the RUN label in the container image when present.
      class Atomic_image < Base
        # @return [:docker, :ostree, nil] Define the backend where the image is pulled.
        attribute :backend
        validates :backend, expression_inclusion: {:in=>[:docker, :ostree], :message=>"%{value} needs to be :docker, :ostree"}, allow_nil: true

        # @return [String] Name of the container image.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :latest, :present, nil] The state of the container image.,The state C(latest) will ensure container image is upgraded to the latest version and forcefully restart container, if running.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :latest, :present], :message=>"%{value} needs to be :absent, :latest, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Start or Stop the container.
        attribute :started
        validates :started, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
