# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # This module allows setting/accumulating stats on the current ansible run, either per host of for all hosts in the run.
      class Set_stats < Base
        # @return [Hash] A dictionary of which each key represents a stat (or variable) you want to keep track of
        attribute :data
        validates :data, presence: true, type: Hash

        # @return [Boolean, nil] boolean that indicates if the stats is per host or for all hosts in the run.
        attribute :per_host
        validates :per_host, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [Boolean, nil] boolean that indicates if the provided value is aggregated to the existing stat C(yes) or will replace it C(no)
        attribute :aggregate
        validates :aggregate, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
