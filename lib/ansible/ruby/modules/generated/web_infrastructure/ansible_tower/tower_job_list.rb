# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # List Ansible Tower jobs. See U(https://www.ansible.com/tower) for an overview.
      class Tower_job_list < Base
        # @return [:pending, :waiting, :running, :error, :failed, :canceled, :successful, nil] Only list jobs with this status.
        attribute :status
        validates :status, inclusion: {:in=>[:pending, :waiting, :running, :error, :failed, :canceled, :successful], :message=>"%{value} needs to be :pending, :waiting, :running, :error, :failed, :canceled, :successful"}, allow_nil: true

        # @return [Object, nil] Page number of the results to fetch.
        attribute :page

        # @return [Boolean, nil] Fetch all the pages and return a single result.
        attribute :all_pages
        validates :all_pages, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Hash, nil] Query used to further filter the list of jobs. {"foo":"bar"} will be passed at ?foo=bar
        attribute :query
        validates :query, type: Hash
      end
    end
  end
end
