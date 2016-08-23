# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Junos_template < Base
        # @return [String] The path to the config source.  The source can be either a file with config or a template that will be merged during runtime.  By default the task will search for the source file in role or playbook root folder in templates directory.
        attribute :src
        validates :src, presence: true, type: String

        # @return [:true, :false, nil] When this argument is configured true, the module will backup the configuration from the node prior to making any changes. The backup file will be written to backup_{{ hostname }} in the root of the playbook directory.
        attribute :backup
        validates :backup, inclusion: {:in=>[:true, :false], :message=>"%{value} needs to be :true, :false"}, allow_nil: true

        # @return [Integer, nil] The C(confirm) argument will configure a time out value for the commit to be confirmed before it is automatically rolled back.  If the C(confirm) argument is set to False, this argument is silently ignored.  If the value for this argument is set to 0, the commit is confirmed immediately.
        attribute :confirm
        validates :confirm, type: Integer

        # @return [String, nil] The C(comment) argument specifies a text string to be used when committing the configuration.  If the C(confirm) argument is set to False, this argument is silently ignored.
        attribute :comment
        validates :comment, type: String

        # @return [:merge, :overwrite, :replace, nil] The C(action) argument specifies how the module will apply changes.
        attribute :action
        validates :action, inclusion: {:in=>[:merge, :overwrite, :replace], :message=>"%{value} needs to be :merge, :overwrite, :replace"}, allow_nil: true

        # @return [:text, :xml, :set, nil] The C(format) argument specifies the format of the configuration template specified in C(src).  If the format argument is not specified, the module will attempt to infer the configuration format based of file extension.  Files that end in I(xml) will set the format to xml.  Files that end in I(set) will set the format to set and all other files will default the format to text.
        attribute :config_format
        validates :config_format, inclusion: {:in=>[:text, :xml, :set], :message=>"%{value} needs to be :text, :xml, :set"}, allow_nil: true
      end
    end
  end
end
