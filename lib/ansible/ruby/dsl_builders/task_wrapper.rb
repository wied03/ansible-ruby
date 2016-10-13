# see LICENSE.txt in project root
module Ansible
  module Ruby
    module DslBuilders
      class TaskWrapper
        attr_reader :task, :result

        def initialize(task, result)
          @task = task
          @result = result
        end
      end
    end
  end
end
