# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Configure a .deb package using debconf-set-selections. Or just query existing selections.
      class Debconf < Base
        # @return [Object] Name of package to configure.
        attribute :name
        validates :name, presence: true

        # @return [Object, nil] A debconf configuration setting
        attribute :question

        # @return [:string, :password, :boolean, :select, :multiselect, :note, :error, :title, :text, :seen, nil] The type of the value supplied.,C(seen) was added in 2.2.
        attribute :vtype
        validates :vtype, inclusion: {:in=>[:string, :password, :boolean, :select, :multiselect, :note, :error, :title, :text, :seen], :message=>"%{value} needs to be :string, :password, :boolean, :select, :multiselect, :note, :error, :title, :text, :seen"}, allow_nil: true

        # @return [Object, nil] Value to set the configuration to
        attribute :value

        # @return [Boolean, nil] Do not set 'seen' flag when pre-seeding
        attribute :unseen
        validates :unseen, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true
      end
    end
  end
end
