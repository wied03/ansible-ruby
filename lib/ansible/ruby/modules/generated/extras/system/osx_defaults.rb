# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Osx_defaults < Base
        # @return [String, nil] The domain is a domain name of the form com.companyname.appname.
        attribute :domain
        validates :domain, type: String

        # @return [String, nil] The host on which the preference should apply. The special value "currentHost" corresponds to the "-currentHost" switch of the defaults commandline tool.
        attribute :host
        validates :host, type: String

        # @return [String] The key of the user preference
        attribute :key
        validates :key, presence: true, type: String

        # @return [:array, :bool, :boolean, :date, :float, :int, :integer, :string, nil] The type of value to write.
        attribute :type
        validates :type, inclusion: {:in=>[:array, :bool, :boolean, :date, :float, :int, :integer, :string], :message=>"%{value} needs to be :array, :bool, :boolean, :date, :float, :int, :integer, :string"}, allow_nil: true

        # @return [Boolean, nil] Add new elements to the array for a key which has an array as its value.
        attribute :array_add
        validates :array_add, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, Array<String>, nil] The value to write. Only required when state = present.
        attribute :value
        validates :value, type: TypeGeneric.new(String)

        # @return [:present, :absent, nil] The state of the user defaults
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
