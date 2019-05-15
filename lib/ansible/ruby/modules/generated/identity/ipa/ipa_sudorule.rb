# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add, modify or delete sudo rule within IPA server using IPA API.
      class Ipa_sudorule < Base
        # @return [Object] Canonical name.,Can not be changed as it is the unique identifier.
        attribute :cn
        validates :cn, presence: true

        # @return [:all, nil] Command category the rule applies to.
        attribute :cmdcategory
        validates :cmdcategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Object, nil] List of commands assigned to the rule.,If an empty list is passed all commands will be removed from the rule.,If option is omitted commands will not be checked or changed.
        attribute :cmd

        # @return [String, nil] Description of the sudo rule.
        attribute :description
        validates :description, type: String

        # @return [Array<String>, String, nil] List of hosts assigned to the rule.,If an empty list is passed all hosts will be removed from the rule.,If option is omitted hosts will not be checked or changed.,Option C(hostcategory) must be omitted to assign hosts.
        attribute :host
        validates :host, type: TypeGeneric.new(String)

        # @return [:all, nil] Host category the rule applies to.,If 'all' is passed one must omit C(host) and C(hostgroup).,Option C(host) and C(hostgroup) must be omitted to assign 'all'.
        attribute :hostcategory
        validates :hostcategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Array<String>, String, nil] List of host groups assigned to the rule.,If an empty list is passed all host groups will be removed from the rule.,If option is omitted host groups will not be checked or changed.,Option C(hostcategory) must be omitted to assign host groups.
        attribute :hostgroup
        validates :hostgroup, type: TypeGeneric.new(String)

        # @return [:all, nil] RunAs User category the rule applies to.
        attribute :runasusercategory
        validates :runasusercategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [:all, nil] RunAs Group category the rule applies to.
        attribute :runasgroupcategory
        validates :runasgroupcategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Array<String>, String, nil] List of options to add to the sudo rule.
        attribute :sudoopt
        validates :sudoopt, type: TypeGeneric.new(String)

        # @return [Object, nil] List of users assigned to the rule.,If an empty list is passed all users will be removed from the rule.,If option is omitted users will not be checked or changed.
        attribute :user

        # @return [:all, nil] User category the rule applies to.
        attribute :usercategory
        validates :usercategory, inclusion: {:in=>[:all], :message=>"%{value} needs to be :all"}, allow_nil: true

        # @return [Array<String>, String, nil] List of user groups assigned to the rule.,If an empty list is passed all user groups will be removed from the rule.,If option is omitted user groups will not be checked or changed.
        attribute :usergroup
        validates :usergroup, type: TypeGeneric.new(String)

        # @return [:present, :absent, :enabled, :disabled, nil] State to ensure
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent, :enabled, :disabled], :message=>"%{value} needs to be :present, :absent, :enabled, :disabled"}, allow_nil: true
      end
    end
  end
end
