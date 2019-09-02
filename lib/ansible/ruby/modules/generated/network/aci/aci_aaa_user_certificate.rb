# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage AAA user certificates on Cisco ACI fabrics.
      class Aci_aaa_user_certificate < Base
        # @return [String] The name of the user to add a certificate to.
        attribute :aaa_user
        validates :aaa_user, presence: true, type: String

        # @return [:appuser, :user, nil] Whether this is a normal user or an appuser.
        attribute :aaa_user_type
        validates :aaa_user_type, expression_inclusion: {:in=>[:appuser, :user], :message=>"%{value} needs to be :appuser, :user"}, allow_nil: true

        # @return [Object, nil] The PEM format public key extracted from the X.509 certificate.
        attribute :certificate

        # @return [String, nil] The name of the user certificate entry in ACI.
        attribute :certificate_name
        validates :certificate_name, type: String

        # @return [:absent, :present, :query, nil] Use C(present) or C(absent) for adding or removing.,Use C(query) for listing an object or multiple objects.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present, :query], :message=>"%{value} needs to be :absent, :present, :query"}, allow_nil: true
      end
    end
  end
end
