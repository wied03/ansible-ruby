# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages packages with I(urpmi) (such as for Mageia or Mandriva)
      class Urpmi < Base
        # @return [String] A list of package names to install, upgrade or remove.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Indicates the desired package state.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] Update the package database first C(urpmi.update -a).
        attribute :update_cache
        validates :update_cache, type: String

        # @return [String, nil] Corresponds to the C(--no-recommends) option for I(urpmi).
        attribute :no_recommends, original_name: 'no-recommends'
        validates :no_recommends, type: String

        # @return [String, nil] Assume "yes" is the answer to any question urpmi has to ask. Corresponds to the C(--force) option for I(urpmi).
        attribute :force
        validates :force, type: String

        # @return [String, nil] Specifies an alternative install root, relative to which all packages will be installed. Corresponds to the C(--root) option for I(urpmi).
        attribute :root
        validates :root, type: String
      end
    end
  end
end
