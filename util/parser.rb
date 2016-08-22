# See LICENSE.txt for license

require_relative 'parser/option'
require 'yaml'

module Ansible
  module Ruby
    module Parser
      INDENT = Array.new(8, ' ').join ''

      class << self
        def from_yaml_string(desc_yaml, example_yaml)
          description = YAML.load desc_yaml
          example = YAML.load example_yaml
          klass description do
            options(description['options'], example)
          end
        end

        private

        def options(options, example)
          options.map do |name, detail|
            lines = Option.parse(name, detail, example).map { |line| "#{INDENT}#{line}" }
            # separate attributes with a line break
            lines << ''
          end.flatten.join "\n"
        end

        def klass(description)
          puts "working with desc #{description}"
          klass_name = description['module'].capitalize
          <<RUBY
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class #{klass_name} < Base
#{yield}
      end
    end
  end
end
RUBY
        end
      end
    end
  end
end

