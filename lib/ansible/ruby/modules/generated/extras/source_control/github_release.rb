# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Fetch metadata about Github Releases
      class Github_release < Base
        # @return [String] Github Personal Access Token for authenticating
        attribute :token
        validates :token, presence: true, type: String

        # @return [String] The GitHub account that owns the repository
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Repository name
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [:latest_release] Action to perform
        attribute :action
        validates :action, presence: true, inclusion: {:in=>[:latest_release], :message=>"%{value} needs to be :latest_release"}
      end
    end
  end
end
