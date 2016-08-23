# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Debconf < Base
        # @return [Object] Name of package to configure.
        attribute :name
        validates :name, presence: true

        # @return [Object] A debconf configuration setting
        attribute :question

        # @return [Object] The type of the value supplied
        attribute :vtype
        validates :vtype, inclusion: {:in=>[:string, :password, :boolean, :select, :multiselect, :note, :error, :title, :text], :message=>"%{value} needs to be :string, :password, :boolean, :select, :multiselect, :note, :error, :title, :text"}, allow_nil: true

        # @return [Object] Value to set the configuration to
        attribute :value

        # @return [Object] Do not set 'seen' flag when pre-seeding
        attribute :unseen
      end
    end
  end
end