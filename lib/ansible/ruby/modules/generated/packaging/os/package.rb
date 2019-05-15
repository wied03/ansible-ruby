# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Installs, upgrade and removes packages using the underlying OS package manager.
      # For Windows targets, use the M(win_package) module instead.
      class Package < Base
        # @return [String] Package name, or package specifier with version, like C(name-1.0).,Be aware that packages are not always named the same and this module will not 'translate' them per distro.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Whether to install (C(present)), or remove (C(absent)) a package. Other states depend on the underlying package module, i.e C(latest).
        attribute :state
        validates :state, presence: true, type: String

        # @return [String, nil] The required package manager module to use (yum, apt, etc). The default 'auto' will use existing facts or try to autodetect it.,You should only use this field if the automatic selection is not working for some reason.
        attribute :use
        validates :use, type: String
      end
    end
  end
end
