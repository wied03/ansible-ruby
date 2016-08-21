require 'ansible/ruby/dsl_builders/play'
require 'ansible/ruby/models/playbook'

module Ansible
  module Ruby
    module DslBuilders
      class Playbook < Base
        def initialize
          @plays = []
        end

        def play(name=nil, &block)
          play_builder = Play.new name
          @plays << play_builder.evaluate(&block)
        end

        def evaluate(*)
          super
          Models::Playbook.new plays: @plays
        end

        def process_method(id, *)
          raise "undefined local variable or method `#{id}'"
        end
      end
    end
  end
end
