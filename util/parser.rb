# See LICENSE.txt for license

require_relative 'parser/option'
require 'yaml'

module Ansible
  module Ruby
    module Parser
      INDENT = Array.new(8, ' ').join ''

      class << self
        def from_yaml_string(desc_yaml, example_yaml)
          File.write 'debug_desc.yml', desc_yaml
          description = YAML.load desc_yaml
          mod = description['module']
          example_yaml = fixed_example mod, example_yaml
          File.write 'debug_example.yml', example_yaml
          example = YAML.load example_yaml
          klass mod do
            options(description['options'], example)
          end
        end

        private

        def fixed_example(mod, yaml)
          # some examples are wrong
          yaml.gsub "- #{mod}", "- #{mod}:"
        end

        def options(options, example)
          options.map do |name, detail|
            lines = Option.parse(name, detail, example).map { |line| "#{INDENT}#{line}" }
            # separate attributes with a line break
            lines << ''
          end.flatten.join "\n"
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

