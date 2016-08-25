# See LICENSE.txt in root of repository

require 'rake/tasklib'
require 'ansible/ruby/rake/task_util'

module Ansible
  module Ruby
    module Rake
      class Clean < ::Rake::TaskLib
        include TaskUtil

        # :reek:Attribute - Rake DSL gets ugly if we don't use a block
        attr_accessor :files

        def initialize(parameters = :default)
          name, deps = parse_params parameters
          yield self if block_given?
          raise 'You did not supply any files!' unless files && [*files].any?
          clean_files = yaml_filenames [*files]
          task name => deps do
            exist = clean_files.select { |file| File.exist? file }
            if exist.any?
              puts "Cleaning ansible-ruby files: #{exist}"
              rm_rf exist
            else
              puts 'No ansible-ruby files exist to clean'
            end
          end
        end
      end
    end
  end
end
