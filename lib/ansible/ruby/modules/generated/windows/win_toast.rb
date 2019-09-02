# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Sends alerts which appear in the Action Center area of the windows desktop.
      class Win_toast < Base
        # @return [Integer, nil] How long in seconds before the notification expires.
        attribute :expire
        validates :expire, type: Integer

        # @return [String, nil] Which notification group to add the notification to.
        attribute :group
        validates :group, type: String

        # @return [Array<String>, String, nil] The message to appear inside the notification.,May include \n to format the message to appear within the Action Center.
        attribute :msg
        validates :msg, type: TypeGeneric.new(String)

        # @return [Boolean, nil] If C(no), the notification will not pop up and will only appear in the Action Center.
        attribute :popup
        validates :popup, expression_inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The tag to add to the notification.
        attribute :tag
        validates :tag, type: String

        # @return [String, nil] The notification title, which appears in the pop up..
        attribute :title
        validates :title, type: String
      end
    end
  end
end
