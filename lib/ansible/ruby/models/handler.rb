# frozen_string_literal: true

# see LICENSE.txt in project root

require 'ansible/ruby/models/task'

module Ansible
  module Ruby
    module Models
      class Handler < Task
        attribute :listen
        validates :listen, type: String
      end
    end
  end
end
