# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure a .deb package using debconf-set-selections. Or just query existing selections.
      class Debconf < Base
        # @return [String] Name of package to configure.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] A debconf configuration setting.
        attribute :question
        validates :question, type: String

        # @return [:boolean, :error, :multiselect, :note, :password, :seen, :select, :string, :text, :title, :text, nil] The type of the value supplied.,C(seen) was added in 2.2.
        attribute :vtype
        validates :vtype, inclusion: {:in=>[:boolean, :error, :multiselect, :note, :password, :seen, :select, :string, :text, :title, :text], :message=>"%{value} needs to be :boolean, :error, :multiselect, :note, :password, :seen, :select, :string, :text, :title, :text"}, allow_nil: true

        # @return [Array<String>, String, nil] Value to set the configuration to.
        attribute :value
        validates :value, type: TypeGeneric.new(String)

        # @return [Symbol, nil] Do not set 'seen' flag when pre-seeding.
        attribute :unseen
        validates :unseen, type: Symbol
      end
    end
  end
end
