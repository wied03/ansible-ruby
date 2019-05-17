# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Set owner of files or directories
      class Win_owner < Base
        # @return [String] Path to be used for changing owner
        attribute :path
        validates :path, presence: true, type: String

        # @return [String] Name to be used for changing owner
        attribute :user
        validates :user, presence: true, type: String

        # @return [:yes, :no, nil] Indicates if the owner should be changed recursively
        attribute :recurse
        validates :recurse, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
