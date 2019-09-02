# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows the management of Katello resources inside your Foreman server.
      class Katello < Base
        # @return [String] URL of Foreman server.
        attribute :server_url
        validates :server_url, presence: true, type: String

        # @return [String] Username on Foreman server.
        attribute :username
        validates :username, presence: true, type: String

        # @return [String] Password for user accessing Foreman server.
        attribute :password
        validates :password, presence: true, type: String

        # @return [:repository, :manifest, :repository_set, :sync_plan, :content_view, :lifecycle_environment, :activation_key] The Foreman resource that the action will be performed on (e.g. organization, host).
        attribute :entity
        validates :entity, presence: true, expression_inclusion: {:in=>[:repository, :manifest, :repository_set, :sync_plan, :content_view, :lifecycle_environment, :activation_key], :message=>"%{value} needs to be :repository, :manifest, :repository_set, :sync_plan, :content_view, :lifecycle_environment, :activation_key"}

        # @return [:sync, :publish, :promote, nil] action associated to the entity resource to set or edit in dictionary format.,Possible Action in relation to Entitys.,sync (available when entity=product or entity=repository),publish (available when entity=content_view),promote (available when entity=content_view)
        attribute :action
        validates :action, expression_inclusion: {:in=>[:sync, :publish, :promote], :message=>"%{value} needs to be :sync, :publish, :promote"}, allow_nil: true

        # @return [Hash] Parameters associated to the entity resource and action, to set or edit in dictionary format.,Each choice may be only available with specific entitys and actions.,Possible Choices are in the format of param_name ([entry,action,action,...],[entity,..],...).,The action "None" means no action specified.,Possible Params in relation to entity and action.,name ([product,sync,None], [repository,sync], [repository_set,None], [sync_plan,None],,[content_view,promote,publish,None], [lifecycle_environment,None], [activation_key,None]),organization ([product,sync,None] ,[repository,sync,None], [repository_set,None], [sync_plan,None], ,[content_view,promote,publish,None], [lifecycle_environment,None], [activation_key,None]),content ([manifest,None]),product ([repository,sync,None], [repository_set,None], [sync_plan,None]),basearch ([repository_set,None]),releaserver ([repository_set,None]),sync_date ([sync_plan,None]),interval ([sync_plan,None]),repositories ([content_view,None]),from_environment ([content_view,promote]),to_environment([content_view,promote]),prior ([lifecycle_environment,None]),content_view ([activation_key,None]),lifecycle_environment ([activation_key,None])
        attribute :params
        validates :params, presence: true, type: Hash

        # @return [Integer, nil] The timeout in seconds to wait for the started Foreman action to finish.,If the timeout is reached and the Foreman action did not complete, the ansible task fails. However the foreman action does not get canceled.
        attribute :task_timeout
        validates :task_timeout, type: Integer

        # @return [Symbol, nil] verify the ssl/https connection (e.g for a valid certificate)
        attribute :verify_ssl
        validates :verify_ssl, type: Symbol
      end
    end
  end
end
