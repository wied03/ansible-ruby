# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # A CRUD-like interface to managing bits of XML files.
      # You might also be interested in a brief tutorial from U(https://www.w3schools.com/xml/xpath_intro.asp) and U(https://developer.mozilla.org/en-US/docs/Web/XPath).
      class Xml < Base
        # @return [String] Path to the file to operate on. File must exist ahead of time.,This parameter is required, unless C(xmlstring) is given.
        attribute :path
        validates :path, presence: true, type: String

        # @return [Object] A string containing XML on which to operate.,This parameter is required, unless C(path) is given.
        attribute :xmlstring
        validates :xmlstring, presence: true

        # @return [String, nil] A valid XPath expression describing the item(s) you want to manipulate.,Operates on the document root, C(/), by default.
        attribute :xpath
        validates :xpath, type: String

        # @return [Hash, nil] The namespace C(prefix:uri) mapping for the XPath expression.,Needs to be a C(dict), not a C(list) of items.
        attribute :namespaces
        validates :namespaces, type: Hash

        # @return [:absent, :present, nil] Set or remove an xpath selection (node(s), attribute(s)).
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The attribute to select when using parameter C(value).,This is a string, not prepended with C(@).
        attribute :attribute
        validates :attribute, type: String

        # @return [Integer, String, Date, nil] Desired state of the selected attribute.,Either a string, or to unset a value, the Python C(None) keyword (YAML Equivalent, C(null)).,Elements default to no value (but present).,Attributes default to an empty string.
        attribute :value
        validates :value, type: MultipleTypes.new(Integer, String, Date)

        # @return [Array<Hash>, Hash, nil] Add additional child-element(s) to a selected element for a given C(xpath).,Child elements must be given in a list and each item may be either a string (eg. C(children=ansible) to add an empty C(<ansible/>) child element), or a hash where the key is an element name and the value is the element value.,This parameter requires C(xpath) to be set.
        attribute :add_children
        validates :add_children, type: TypeGeneric.new(Hash)

        # @return [Object, nil] Set the child-element(s) of a selected element for a given C(xpath).,Removes any existing children.,Child elements must be specified as in C(add_children).,This parameter requires C(xpath) to be set.
        attribute :set_children

        # @return [:yes, :no, nil] Search for a given C(xpath) and provide the count of any matches.,This parameter requires C(xpath) to be set.
        attribute :count
        validates :count, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Search for a given C(xpath) and print out any matches.,This parameter requires C(xpath) to be set.
        attribute :print_match
        validates :print_match, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Pretty print XML output.
        attribute :pretty_print
        validates :pretty_print, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:attribute, :text, nil] Search for a given C(xpath) and get content.,This parameter requires C(xpath) to be set.
        attribute :content
        validates :content, inclusion: {:in=>[:attribute, :text], :message=>"%{value} needs to be :attribute, :text"}, allow_nil: true

        # @return [:xml, :yaml, nil] Type of input for C(add_children) and C(set_children).
        attribute :input_type
        validates :input_type, inclusion: {:in=>[:xml, :yaml], :message=>"%{value} needs to be :xml, :yaml"}, allow_nil: true

        # @return [:yes, :no, nil] Create a backup file including the timestamp information so you can get the original file back if you somehow clobbered it incorrectly.
        attribute :backup
        validates :backup, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Remove CDATA tags surrounding text values.,Note that this might break your XML file if text values contain characters that could be interpreted as XML.
        attribute :strip_cdata_tags
        validates :strip_cdata_tags, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
