# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Execute show command in the nodes and returns the results read from the device.
      class Pn_show < Base
        # @return [Object, nil] Provide login username if user is not root.
        attribute :pn_cliusername

        # @return [Object, nil] Provide login password if user is not root.
        attribute :pn_clipassword

        # @return [Object, nil] Target switch(es) to run the cli on.
        attribute :pn_cliswitch

        # @return [String] The C(pn_command) takes a CLI show command as value.
        attribute :pn_command
        validates :pn_command, presence: true, type: String

        # @return [Array<String>, String, nil] Display output using a specific parameter. Use 'all' to display possible output. List of comma separated parameters.
        attribute :pn_parameters
        validates :pn_parameters, type: TypeGeneric.new(String)

        # @return [String, nil] Specify formatting options.
        attribute :pn_options
        validates :pn_options, type: String
      end
    end
  end
end
