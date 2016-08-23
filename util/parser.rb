# See LICENSE.txt for license

require_relative 'parser/option'
require 'yaml'

module Ansible
  module Ruby
    module Parser
      INDENT = Array.new(8, ' ').join ''

      class << self
        def from_yaml_string(desc_yaml, example_yaml)
          description = Yaml.parse desc_yaml, 'description'
          mod = description['module']
          example = Yaml.parse example_yaml, 'example', mod
          klass mod do
            options(description['options'], example)
          end
        end

        private

        def options(options, example)
          all_lines = options.map do |name, detail|
            lines = Option.parse(name, detail, example).map { |line| "#{INDENT}#{line}" }
            # separate attributes with a line break
            lines << ''
          end.flatten
          # Get rid of the last extra line
          all_lines.pop
          all_lines.join "\n"
        end

        def klass(mod)
          klass_name = mod.capitalize
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

