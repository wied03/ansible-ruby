# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manages "spells" on Source Mage GNU/Linux using I(sorcery) toolchain
      class Sorcery < Base
        # @return [String, nil] Name of the spell,multiple names can be given, separated by commas,special value '*' in conjunction with states C(latest) or C(rebuild) will update or rebuild the whole system respectively
        attribute :name
        validates :name, type: String

        # @return [:present, :latest, :absent, :cast, :dispelled, :rebuild, nil] Whether to cast, dispel or rebuild a package,state C(cast) is an equivalent of C(present), not C(latest),state C(latest) always triggers C(update_cache=yes),state C(rebuild) implies cast of all specified spells, not only those existed before
        attribute :state
        validates :state, inclusion: {:in=>[:present, :latest, :absent, :cast, :dispelled, :rebuild], :message=>"%{value} needs to be :present, :latest, :absent, :cast, :dispelled, :rebuild"}, allow_nil: true

        # @return [Array<String>, String, nil] Comma-separated list of _optional_ dependencies to build a spell (or make sure it is built) with; use +/- in front of dependency to turn it on/off ('+' is optional though),this option is ignored if C(name) parameter is equal to '*' or contains more than one spell,providers must be supplied in the form recognized by Sorcery, e.g. 'openssl(SSL)'
        attribute :depends
        validates :depends, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Whether or not to update sorcery scripts at the very first stage
        attribute :update
        validates :update, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether or not to update grimoire collection before casting spells
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] Time in seconds to invalidate grimoire collection on update,especially useful for SCM and rsync grimoires,makes sense only in pair with C(update_cache)
        attribute :cache_valid_time
        validates :cache_valid_time, type: Integer
      end
    end
  end
end
