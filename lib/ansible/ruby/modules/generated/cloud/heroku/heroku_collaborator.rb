# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages collaborators for Heroku apps.
      # If set to C(present) and heroku user is already collaborator, then do nothing.
      # If set to C(present) and heroku user is not collaborator, then add user to app.
      # If set to C(absent) and heroku user is collaborator, then delete user from app.
      class Heroku_collaborator < Base
        # @return [String, nil] Heroku API key
        attribute :api_key
        validates :api_key, type: String

        # @return [Array<String>, String] List of Heroku App names
        attribute :apps
        validates :apps, presence: true, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Suppress email invitation when creating collaborator
        attribute :suppress_invitation
        validates :suppress_invitation, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] User ID or e-mail
        attribute :user
        validates :user, presence: true, type: String

        # @return [:present, :absent, nil] Create or remove the heroku collaborator
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
