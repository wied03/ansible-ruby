# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Install, uninstall a Windows hotfix.
      class Win_hotfix < Base
        # @return [String, nil] The name of the hotfix as shown in DISM, see examples for details.,This or C(hotfix_kb) MUST be set when C(state=absent).,If C(state=present) then the hotfix at C(source) will be validated against this value, if it does not match an error will occur.,You can get the identifier by running 'Get-WindowsPackage -Online -PackagePath path-to-cab-in-msu' after expanding the msu file.
        attribute :hotfix_identifier
        validates :hotfix_identifier, type: String

        # @return [String, nil] The name of the KB the hotfix relates to, see examples for details.,This of C(hotfix_identifier) MUST be set when C(state=absent).,If C(state=present) then the hotfix at C(source) will be validated against this value, if it does not match an error will occur.,Because DISM uses the identifier as a key and doesn't refer to a KB in all cases it is recommended to use C(hotfix_identifier) instead.
        attribute :hotfix_kb
        validates :hotfix_kb, type: String

        # @return [:absent, :present, nil] Whether to install or uninstall the hotfix.,When C(present), C(source) MUST be set.,When C(absent), C(hotfix_identifier) or C(hotfix_kb) MUST be set.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The path to the downloaded hotfix .msu file.,This MUST be set if C(state=present) and MUST be a .msu hotfix file.
        attribute :source
        validates :source, type: String
      end
    end
  end
end
