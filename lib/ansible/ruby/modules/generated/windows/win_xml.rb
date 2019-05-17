# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds XML fragments formatted as strings to existing XML on remote servers.
      class Win_xml < Base
        # @return [String] The path of remote servers XML.
        attribute :path
        validates :path, presence: true, type: String

        # @return [Array<String>, String] The string representation of the XML fragment to be added.
        attribute :fragment
        validates :fragment, presence: true, type: TypeGeneric.new(String)

        # @return [String] The node of the remote server XML where the fragment will go.
        attribute :xpath
        validates :xpath, presence: true, type: String

        # @return [:yes, :no, nil] Whether to backup the remote server's XML before applying the change.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:element, :attribute, :text] The type of XML you are working with.
        attribute :type
        validates :type, presence: true, inclusion: {:in=>[:element, :attribute, :text], :message=>"%{value} needs to be :element, :attribute, :text"}

        # @return [String, nil] The attribute name if the type is 'attribute'. Required if C(type=attribute).
        attribute :attribute
        validates :attribute, type: String
      end
    end
  end
end
