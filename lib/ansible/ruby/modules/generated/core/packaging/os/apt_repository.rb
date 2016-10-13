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
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [Integer, nil] The octal mode for newly created files in sources.list.d
        attribute :mode
        validates :mode, type: Integer

        # @return [:yes, :no, nil] Run the equivalent of C(apt-get update) when a change occurs.  Cache updates are run after making changes.
        attribute :update_cache
        validates :update_cache, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If C(no), SSL certificates for the target repo will not be validated. This should only be used on personally controlled sites using self-signed certificates.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Sets the name of the source list file in sources.list.d. Defaults to a file name based on the repository source url. The .list extension will be automatically added.
        attribute :filename
      end
    end
  end
end
