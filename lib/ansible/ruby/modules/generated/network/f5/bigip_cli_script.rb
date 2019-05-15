# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages CLI scripts on a BIG-IP. CLI scripts, otherwise known as tmshell scripts or TMSH scripts allow you to create custom scripts that can run to manage objects within a BIG-IP.
      class Bigip_cli_script < Base
        # @return [String] Specifies the name of the script.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String, nil] The content of the script.,This parameter is typically used in conjunction with Ansible's C(file), or template lookup plugins. If this sounds foreign to you, see the examples in this documentation.
        attribute :content
        validates :content, type: String

        # @return [Object, nil] Description of the cli script.
        attribute :description

        # @return [String, nil] Device partition to manage resources on.
        attribute :partition
        validates :partition, type: String

        # @return [:present, :absent, nil] When C(present), ensures that the script exists.,When C(absent), ensures the script is removed.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
