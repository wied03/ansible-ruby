# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create or destroy user roles
      class Na_cdot_user_role < Base
        # @return [:present, :absent] Whether the specified user should exist or not.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [String] The name of the role to manage.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] The command or command directory to which the role has an access.
        attribute :command_directory_name
        validates :command_directory_name, presence: true, type: String

        # @return [:none, :readonly, :all, nil] The name of the role to manage.
        attribute :access_level
        validates :access_level, expression_inclusion: {:in=>[:none, :readonly, :all], :message=>"%{value} needs to be :none, :readonly, :all"}, allow_nil: true

        # @return [String] The name of the vserver to use.
        attribute :vserver
        validates :vserver, presence: true, type: String
      end
    end
  end
end
