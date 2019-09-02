# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages AAA server global configuration on HUAWEI CloudEngine switches.
      class Ce_aaa_server < Base
        # @return [:present, :absent, nil] Specify desired state of the resource.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Object, nil] Name of an authentication scheme. The value is a string of 1 to 32 characters.
        attribute :authen_scheme_name

        # @return [:invalid, :local, :hwtacacs, :radius, :none, nil] Preferred authentication mode.
        attribute :first_authen_mode
        validates :first_authen_mode, expression_inclusion: {:in=>[:invalid, :local, :hwtacacs, :radius, :none], :message=>"%{value} needs to be :invalid, :local, :hwtacacs, :radius, :none"}, allow_nil: true

        # @return [Object, nil] Name of an authorization scheme. The value is a string of 1 to 32 characters.
        attribute :author_scheme_name

        # @return [:invalid, :local, :hwtacacs, :"if-authenticated", :none, nil] Preferred authorization mode.
        attribute :first_author_mode
        validates :first_author_mode, expression_inclusion: {:in=>[:invalid, :local, :hwtacacs, :"if-authenticated", :none], :message=>"%{value} needs to be :invalid, :local, :hwtacacs, :\"if-authenticated\", :none"}, allow_nil: true

        # @return [Object, nil] Accounting scheme name. The value is a string of 1 to 32 characters.
        attribute :acct_scheme_name

        # @return [:invalid, :hwtacacs, :radius, :none, nil] Accounting Mode.
        attribute :accounting_mode
        validates :accounting_mode, expression_inclusion: {:in=>[:invalid, :hwtacacs, :radius, :none], :message=>"%{value} needs to be :invalid, :hwtacacs, :radius, :none"}, allow_nil: true

        # @return [Object, nil] Name of a domain. The value is a string of 1 to 64 characters.
        attribute :domain_name

        # @return [Object, nil] RADIUS server group's name. The value is a string of 1 to 32 case-insensitive characters.
        attribute :radius_server_group

        # @return [Object, nil] Name of a HWTACACS template. The value is a string of 1 to 32 case-insensitive characters.
        attribute :hwtacas_template

        # @return [Object, nil] Name of the user group where the user belongs. The user inherits all the rights of the user group. The value is a string of 1 to 32 characters.
        attribute :local_user_group
      end
    end
  end
end
