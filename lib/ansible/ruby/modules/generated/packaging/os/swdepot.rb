# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Will install, upgrade and remove packages with swdepot package manager (HP-UX)
      class Swdepot < Base
        # @return [String] package name.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:present, :latest, :absent] whether to install (C(present), C(latest)), or remove (C(absent)) a package.
        attribute :state
        validates :state, presence: true, expression_inclusion: {:in=>[:present, :latest, :absent], :message=>"%{value} needs to be :present, :latest, :absent"}

        # @return [String, nil] The source repository from which install or upgrade a package.
        attribute :depot
        validates :depot, type: String
      end
    end
  end
end
