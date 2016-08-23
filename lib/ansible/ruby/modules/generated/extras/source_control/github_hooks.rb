# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Github_hooks < Base
        # @return [String] Github username.
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] The oauth key provided by github. It can be found/generated on github under "Edit Your Profile" >> "Applications" >> "Personal Access Tokens"
        attribute :oauthkey
        validates :oauthkey, presence: true, type: String

        # @return [String] This is the API url for the repository you want to manage hooks for. It should be in the form of: https://api.github.com/repos/user:/repo:. Note this is different than the normal repo url.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [String] When creating a new hook, this is the url that you want github to post to. It is only required when creating a new hook.
        attribute :hookurl
        validates :hookurl, type: String

        # @return [:create, :cleanall] This tells the githooks module what you want it to do.
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:create, :cleanall], :message=>"%{value} needs to be :create, :cleanall"}

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target repo will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:json, :form, nil] Content type to use for requests made to the webhook
        attribute :content_type
        validates :content_type, inclusion: {:in=>[:json, :form], :message=>"%{value} needs to be :json, :form"}, allow_nil: true
      end
    end
  end
end
