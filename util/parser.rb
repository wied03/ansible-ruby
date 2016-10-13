# See LICENSE.txt for license

require_relative 'parser/option'
require_relative 'parser/yaml'
require_relative './option_formatter'
require 'yaml'

module Ansible
  module Ruby
    module Parser
      KLASS_INDENT = Array.new(6, ' ').join ''
      OPTION_INDENT = Array.new(8, ' ').join ''

      class << self
        # :reek:ControlParameter - Coming from Rake task, no easier answer
        def from_yaml_string(desc_yaml, example_yaml, example_fail_is_ok)
          metadata = Yaml.parse desc_yaml, 'description'
          mod = metadata['module']
          example = begin
            Yaml.parse example_yaml, 'example', mod
          rescue
            raise unless ENV['IGNORE_EXAMPLES'] || example_fail_is_ok
            nil
          end
          klass_description = metadata['description']
          klass_description = [*metadata['short_description']] unless klass_description
          klass mod, klass_description do
            options(metadata['options'], example)
          end
        end

        private

        def options(options, example)
          options ||= {}
          all_lines = options.map do |name, detail|
            option_data = Option.parse(name, detail, example)
            lines = OptionFormatter.format(option_data).map { |line| "#{OPTION_INDENT}#{line}" }
            # separate attributes with a line break
            lines << ''
          end.flatten
          # Get rid of the last extra line
          all_lines.pop
          all_lines.join "\n"
        end

        def klass(mod, description)
          # indentation, etc.
          description = description.map { |line| KLASS_INDENT + "# #{line}" }.join "\n"
          description += "\n" unless description.empty?
          klass_name = mod.capitalize
          <<RUBY
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
#{description+KLASS_INDENT}class #{klass_name} < Base
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
