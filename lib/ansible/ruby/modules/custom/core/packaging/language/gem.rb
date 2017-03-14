# frozen_string_literal: true
# VALIDATED_CHECKSUM: dKP482vZkamr+e2AGOUWLc3MLvUyknVDjXXhyQgXGBI=
# See LICENSE.txt for license

require 'ansible/ruby/modules/generated/core/packaging/language/gem'

module Ansible
  module Ruby
    module Modules
      class Gem < Gem
        remove_existing_validations :user_install
        validates :user_install, inclusion: { :in => [:yes, :no], :message => "%{value} needs to be :yes, :no" }, allow_nil: true
      end
    end
  end
end
