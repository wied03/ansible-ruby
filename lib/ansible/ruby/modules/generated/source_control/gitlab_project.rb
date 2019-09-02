# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # When the project does not exist in Gitlab, it will be created.
      # When the project does exists and state=absent, the project will be deleted.
      # When changes are made to the project, the project will be updated.
      class Gitlab_project < Base
        # @return [String] Url of Gitlab server, with protocol (http or https).
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [:yes, :no, nil] When using https if SSL certificate needs to be verified.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Gitlab user name.
        attribute :login_user
        validates :login_user, type: String

        # @return [String, nil] Gitlab password for login_user
        attribute :login_password
        validates :login_password, type: String

        # @return [String, nil] Gitlab token for logging in.
        attribute :login_token
        validates :login_token, type: String

        # @return [String, nil] The name of the group of which this projects belongs to.,When not provided, project will belong to user which is configured in 'login_user' or 'login_token',When provided with username, project will be created for this user. 'login_user' or 'login_token' needs admin rights.
        attribute :group
        validates :group, type: String

        # @return [String] The name of the project
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object, nil] The path of the project you want to create, this will be server_url/<group>/path,If not supplied, name will be used.
        attribute :path

        # @return [Object, nil] An description for the project.
        attribute :description

        # @return [:yes, :no, nil] Whether you want to create issues or not.,Possible values are true and false.
        attribute :issues_enabled
        validates :issues_enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If merge requests can be made or not.,Possible values are true and false.
        attribute :merge_requests_enabled
        validates :merge_requests_enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If an wiki for this project should be available or not.,Possible values are true and false.
        attribute :wiki_enabled
        validates :wiki_enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If creating snippets should be available or not.,Possible values are true and false.
        attribute :snippets_enabled
        validates :snippets_enabled, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If the project is public available or not.,Setting this to true is same as setting visibility_level to 20.,Possible values are true and false.
        attribute :public
        validates :public, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Private. visibility_level is 0. Project access must be granted explicitly for each user.,Internal. visibility_level is 10. The project can be cloned by any logged in user.,Public. visibility_level is 20. The project can be cloned without any authentication.,Possible values are 0, 10 and 20.
        attribute :visibility_level
        validates :visibility_level, type: Integer

        # @return [:yes, :no, nil] Git repository which will be imported into gitlab.,Gitlab server needs read access to this git repository.
        attribute :import_url
        validates :import_url, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] create or delete project.,Possible values are present and absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
