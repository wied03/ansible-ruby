# See LICENSE.txt for license

require_relative 'parser/option'

module Ansible
  module Ruby
    module Parser
      class << self
        def from_yaml_string(desc_yaml, example_yaml)
          raise 'implement'
        end
      end
    end
  end
end

