# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages Javascript iApp packages on a BIG-IP. This module will allow you to deploy iAppLX packages to the BIG-IP and manage their lifecycle.
      class Bigip_iapplx_package < Base
        # @return [String, nil] The iAppLX package that you want to upload or remove. When C(state) is C(present), and you intend to use this module in a C(role), it is recommended that you use the C({{ role_path }}) variable. An example is provided in the C(EXAMPLES) section.,When C(state) is C(absent), it is not necessary for the package to exist on the Ansible controller. If the full path to the package is provided, the fileame will specifically be cherry picked from it to properly remove the package.
        attribute :package
        validates :package, type: String

        # @return [:present, :absent, nil] Whether the iAppLX package should exist or not.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true
      end
    end
  end
end
