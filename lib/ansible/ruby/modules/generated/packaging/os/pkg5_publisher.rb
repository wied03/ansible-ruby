# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # IPS packages are the native packages in Solaris 11 and higher.
      # This modules will configure which publishers a client will download IPS packages from.
      class Pkg5_publisher < Base
        # @return [String] The publisher's name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :absent, nil] Whether to ensure that a publisher is present or absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Symbol, nil] Packages installed from a sticky repository can only receive updates from that repository.
        attribute :sticky
        validates :sticky, type: Symbol

        # @return [Symbol, nil] Is the repository enabled or disabled?
        attribute :enabled
        validates :enabled, type: Symbol

        # @return [String, nil] A path or URL to the repository.,Multiple values may be provided.
        attribute :origin
        validates :origin, type: String

        # @return [Object, nil] A path or URL to the repository mirror.,Multiple values may be provided.
        attribute :mirror
      end
    end
  end
end
