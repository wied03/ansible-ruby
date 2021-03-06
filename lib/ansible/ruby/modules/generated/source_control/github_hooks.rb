# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds service hooks and removes service hooks that have an error status.
      class Github_hooks < Base
        # @return [String] Github username.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] The oauth key provided by GitHub. It can be found/generated on GitHub under "Edit Your Profile" >> "Developer settings" >> "Personal Access Tokens"
        attribute :oauthkey
        validates :oauthkey, presence: true, type: String

        # @return [String] This is the API url for the repository you want to manage hooks for. It should be in the form of: https://api.github.com/repos/user:/repo:. Note this is different than the normal repo url.\r\n
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String, nil] When creating a new hook, this is the url that you want GitHub to post to. It is only required when creating a new hook.
        attribute :hookurl
        validates :hookurl, type: String

        # @return [:create, :cleanall, :list, :clean504] This tells the githooks module what you want it to do.
        attribute :action
        validates :action, presence: true, expression_inclusion: {:in=>[:create, :cleanall, :list, :clean504], :message=>"%{value} needs to be :create, :cleanall, :list, :clean504"}

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target repo will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:json, :form, nil] Content type to use for requests made to the webhook
        attribute :content_type
        validates :content_type, expression_inclusion: {:in=>[:json, :form], :message=>"%{value} needs to be :json, :form"}, allow_nil: true
      end
    end
  end
end
