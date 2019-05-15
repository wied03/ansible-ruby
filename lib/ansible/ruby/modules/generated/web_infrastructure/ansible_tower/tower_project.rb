# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, or destroy Ansible Tower projects. See U(https://www.ansible.com/tower) for an overview.
      class Tower_project < Base
        # @return [String] Name to use for the project.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Description to use for the project.
        attribute :description
        validates :description, type: String

        # @return [:manual, :git, :hg, :svn, nil] Type of SCM resource.
        attribute :scm_type
        validates :scm_type, inclusion: {:in=>[:manual, :git, :hg, :svn], :message=>"%{value} needs to be :manual, :git, :hg, :svn"}, allow_nil: true

        # @return [Object, nil] URL of SCM resource.
        attribute :scm_url

        # @return [Object, nil] The server playbook directory for manual projects.
        attribute :local_path

        # @return [Object, nil] The branch to use for the SCM resource.
        attribute :scm_branch

        # @return [Object, nil] Name of the credential to use with this SCM resource.
        attribute :scm_credential

        # @return [String, nil] Remove local modifications before updating.
        attribute :scm_clean
        validates :scm_clean, type: String

        # @return [String, nil] Remove the repository completely before updating.
        attribute :scm_delete_on_update
        validates :scm_delete_on_update, type: String

        # @return [String, nil] Before an update to the local repository before launching a job with this project.
        attribute :scm_update_on_launch
        validates :scm_update_on_launch, type: String

        # @return [String, nil] Primary key of organization for project.
        attribute :organization
        validates :organization, type: String

        # @return [:present, :absent, nil] Desired state of the resource.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
