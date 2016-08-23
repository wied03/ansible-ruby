# See LICENSE.txt for license

require_relative 'parser/option'
require_relative 'parser/yaml'
require 'yaml'

module Ansible
  module Ruby
    module Parser
      INDENT = Array.new(8, ' ').join ''

      class << self
        def from_yaml_string(desc_yaml, example_yaml, example_fail_is_ok)
          description = Yaml.parse desc_yaml, 'description'
          mod = description['module']
          example = begin
            Yaml.parse example_yaml, 'example', mod
          rescue
            raise unless ENV['IGNORE_EXAMPLES'] || example_fail_is_ok
            nil
          end
          klass mod do
            options(description['options'], example)
          end
        end

        private

        def options(options, example)
          options ||= {}
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

