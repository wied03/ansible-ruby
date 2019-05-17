# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Create, update, suspend, activate and remove projects.
      class Cs_project < Base
        # @return [String] Name of the project.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] Display text of the project.,If not specified, C(name) will be used as C(display_text).
        attribute :display_text
        validates :display_text, type: String

        # @return [:present, :absent, :active, :suspended, nil] State of the project.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :active, :suspended], :message=>"%{value} needs to be :present, :absent, :active, :suspended"}, allow_nil: true

        # @return [Object, nil] Domain the project is related to.
        attribute :domain

        # @return [Object, nil] Account the project is related to.
        attribute :account

        # @return [Array<Hash>, Hash, nil] List of tags. Tags are a list of dictionaries having keys C(key) and C(value).,If you want to delete all tags, set a empty list e.g. C(tags: []).
        attribute :tags
        validates :tags, type: TypeGeneric.new(Hash)

        # @return [:yes, :no, nil] Poll async jobs until job has finished.
        attribute :poll_async
        validates :poll_async, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
