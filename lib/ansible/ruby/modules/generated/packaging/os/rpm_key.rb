# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes (rpm --import) a gpg key to your rpm database.
      class Rpm_key < Base
        # @return [String] Key that will be modified. Can be a url, a file, or a keyid if the key already exists in the database.
        attribute :key
        validates :key, presence: true, type: String

        # @return [:present, :absent, nil] If the key will be imported or removed from the rpm db.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no) and the C(key) is a url starting with https, SSL certificates will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
