# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create an annotation event on the given annotation stream :name. If the annotation stream does not exist, it will be created automatically
      class Librato_annotation < Base
        # @return [String] Librato account username
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] Librato account api key
        attribute :api_key
        validates :api_key, presence: true, type: String

        # @return [String, nil] The annotation stream name,If the annotation stream does not exist, it will be created automatically
        attribute :name
        validates :name, type: String

        # @return [String] The title of an annotation is a string and may contain spaces,The title should be a short, high-level summary of the annotation e.g. v45 Deployment
        attribute :title
        validates :title, presence: true, type: String

        # @return [String, nil] A string which describes the originating source of an annotation when that annotation is tracked across multiple members of a population
        attribute :source
        validates :source, type: String

        # @return [String, nil] The description contains extra meta-data about a particular annotation,The description should contain specifics on the individual annotation e.g. Deployed 9b562b2 shipped new feature foo!
        attribute :description
        validates :description, type: String

        # @return [Integer, nil] The unix timestamp indicating the the time at which the event referenced by this annotation started
        attribute :start_time
        validates :start_time, type: Integer

        # @return [Integer, nil] The unix timestamp indicating the the time at which the event referenced by this annotation ended,For events that have a duration, this is a useful way to annotate the duration of the event
        attribute :end_time
        validates :end_time, type: Integer

        # @return [Array<Hash>, Hash] See examples
        attribute :links
        validates :links, presence: true, type: TypeGeneric.new(Hash)
      end
    end
  end
end
