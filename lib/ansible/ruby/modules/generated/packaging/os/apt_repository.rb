# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Add or remove an APT repositories in Ubuntu and Debian.
      class Apt_repository < Base
        # @return [String] A source string for the repository.
        attribute :repo
        validates :repo, presence: true, type: String

        # @return [:absent, :present, nil] A source string state.
        attribute :state
        validates :state, expression_inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [String, nil] The octal mode for newly created files in sources.list.d
        attribute :mode
        validates :mode, type: String

        # @return [:yes, :no, nil] Run the equivalent of C(apt-get update) when a change occurs.  Cache updates are run after making changes.
        attribute :update_cache
        validates :update_cache, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target repo will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Sets the name of the source list file in sources.list.d. Defaults to a file name based on the repository source url. The .list extension will be automatically added.
        attribute :filename
        validates :filename, type: String

        # @return [String, nil] Override the distribution codename to use for PPA repositories. Should usually only be set when working with a PPA on a non-Ubuntu target (e.g. Debian or Mint)
        attribute :codename
        validates :codename, type: String
      end
    end
  end
end
