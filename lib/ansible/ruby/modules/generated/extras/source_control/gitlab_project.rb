# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Gitlab_project < Base
        # @return [String] Url of Gitlab server, with protocol (http or https).
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [TrueClass] When using https if SSL certificate needs to be verified.
        attribute :validate_certs
        validates :validate_certs, type: TrueClass

        # @return [String] Gitlab user name.
        attribute :login_user
        validates :login_user, type: String

        # @return [String] Gitlab password for login_user
        attribute :login_password
        validates :login_password, type: String

        # @return [String] Gitlab token for logging in.
        attribute :login_token
        validates :login_token, type: String

        # @return [String] The name of the group of which this projects belongs to.,When not provided, project will belong to user which is configured in 'login_user' or 'login_token',When provided with username, project will be created for this user. 'login_user' or 'login_token' needs admin rights.
        attribute :group
        validates :group, type: String

        # @return [String] The name of the project
        attribute :name
        validates :name, presence: true, type: String

        # @return [Object] The path of the project you want to create, this will be server_url/<group>/path,If not supplied, name will be used.
        attribute :path

        # @return [Object] An description for the project.
        attribute :description

        # @return [TrueClass] Whether you want to create issues or not.,Possible values are true and false.
        attribute :issues_enabled
        validates :issues_enabled, type: TrueClass

        # @return [TrueClass] If merge requests can be made or not.,Possible values are true and false.
        attribute :merge_requests_enabled
        validates :merge_requests_enabled, type: TrueClass

        # @return [TrueClass] If an wiki for this project should be available or not.,Possible values are true and false.
        attribute :wiki_enabled
        validates :wiki_enabled, type: TrueClass

        # @return [TrueClass] If creating snippets should be available or not.,Possible values are true and false.
        attribute :snippets_enabled
        validates :snippets_enabled, type: TrueClass

        # @return [Object] If the project is public available or not.,Setting this to true is same as setting visibility_level to 20.,Possible values are true and false.
        attribute :public

        # @return [Fixnum] Private. visibility_level is 0. Project access must be granted explicitly for each user.,Internal. visibility_level is 10. The project can be cloned by any logged in user.,Public. visibility_level is 20. The project can be cloned without any authentication.,Possible values are 0, 10 and 20.
        attribute :visibility_level
        validates :visibility_level, type: Fixnum

        # @return [String] Git repository which will me imported into gitlab.,Gitlab server needs read access to this git repository.
        attribute :import_url
        validates :import_url, type: String

        # @return [:present, :absent, nil] create or delete project.,Possible values are present and absent.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
