# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
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

        # @return [Object] Unix timestamp of event start, defaults to now
        attribute :start

        # @return [Object] Unix timestamp of event end, defaults to now + duration
        attribute :stop

        # @return [Fixnum] Duration in seconds of annotation, defaults to 0
        attribute :duration
        validates :duration, type: Fixnum
      end
    end
  end
end
