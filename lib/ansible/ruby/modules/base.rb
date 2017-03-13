# frozen_string_literal: true
require 'ansible/ruby/models/base'

module Ansible
  module Ruby
    module Modules
      class Base < Models::Base
        def to_h
          {
            ansible_name.to_sym => super
          }
        end

        def ansible_name
          self.class.name.demodulize.underscore
        end
      end
    end
  end
end
