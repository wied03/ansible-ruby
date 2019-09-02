# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # When the group does not exist in Gitlab, it will be created.
      # When the group does exist and state=absent, the group will be deleted.
      # As of Ansible version 2.7, this module make use of a different python module and thus some arguments are deprecated.
      class Gitlab_group < Base
        # @return [Object] Url of Gitlab server, with protocol (http or https).
        attribute :server_url
        validates :server_url, presence: true

        # @return [Boolean, nil] When using https if SSL certificate needs to be verified.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Object, nil] Gitlab user name.
        attribute :login_user

        # @return [Object, nil] Gitlab password for login_user
        attribute :login_password

        # @return [Object, nil] Gitlab token for logging in.
        attribute :login_token

        # @return [Object] Name of the group you want to create.
        attribute :name
        validates :name, presence: true

        # @return [Object, nil] The path of the group you want to create, this will be server_url/group_path,If not supplied, the group_name will be used.
        attribute :path

        # @return [Object, nil] A description for the group.
        attribute :description

        # @return [:present, :absent, nil] create or delete group.,Possible values are present and absent.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
