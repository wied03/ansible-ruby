# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Creates Connector Card messages through
      # Office 365 Connectors U(https://dev.outlook.com/Connectors)
      class Office_365_connector_card < Base
        # @return [String] The webhook URL is given to you when you create a new Connector.
        attribute :webhook
        validates :webhook, presence: true, type: String

        # @return [String, nil] A string used for summarizing card content.,This will be shown as the message subject.,This is required if the text parameter isn't populated.
        attribute :summary
        validates :summary, type: String

        # @return [String, nil] Accent color used for branding or indicating status in the card.
        attribute :color
        validates :color, type: String

        # @return [String, nil] A title for the Connector message. Shown at the top of the message.
        attribute :title
        validates :title, type: String

        # @return [Array<String>, String, nil] The main text of the card.,This will be rendered below the sender information and optional title,,and above any sections or actions present.
        attribute :text
        validates :text, type: TypeGeneric.new(String)

        # @return [Object, nil] This array of objects will power the action links,found at the bottom of the card.
        attribute :actions

        # @return [Array<Hash>, Hash, nil] Contains a list of sections to display in the card.,For more information see https://dev.outlook.com/Connectors/reference.
        attribute :sections
        validates :sections, type: TypeGeneric.new(Hash)
      end
    end
  end
end
