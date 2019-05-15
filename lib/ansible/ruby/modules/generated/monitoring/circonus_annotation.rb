# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create an annotation event with a given category, title and description. Optionally start, end or durations can be provided
      class Circonus_annotation < Base
        # @return [String] Circonus API key
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String] Annotation Category
        attribute :category
        validates :category, presence: true, type: String

        # @return [String] Description of annotation
        attribute :description
        validates :description, presence: true, type: String

        # @return [String] Title of annotation
        attribute :title
        validates :title, presence: true, type: String

        # @return [String, nil] Unix timestamp of event start
        attribute :start
        validates :start, type: String

        # @return [String, nil] Unix timestamp of event end
        attribute :stop
        validates :stop, type: String

        # @return [Integer, nil] Duration in seconds of annotation
        attribute :duration
        validates :duration, type: Integer
      end
    end
  end
end
