# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Allows users to add or remove flatpak remotes.
      # The flatpak remotes concept is comparable to what is called repositories in other packaging formats.
      # Currently, remote addition is only supported via I(flatpakrepo) file URLs.
      # Existing remotes will not be updated.
      # See the M(flatpak) module for managing flatpaks.
      class Flatpak_remote < Base
        # @return [String, nil] The path to the C(flatpak) executable to use.,By default, this module looks for the C(flatpak) executable on the path.
        attribute :executable
        validates :executable, type: String

        # @return [String, nil] The URL to the I(flatpakrepo) file representing the repository remote to add.,When used with I(state=present), the flatpak remote specified under the I(flatpakrepo_url) is added using the specified installation C(method).,When used with I(state=absent), this is not required.,Required when I(state=present).
        attribute :flatpakrepo_url
        validates :flatpakrepo_url, type: String

        # @return [:system, :user, nil] The installation method to use.,Defines if the I(flatpak) is supposed to be installed globally for the whole C(system) or only for the current C(user).
        attribute :method
        validates :method, inclusion: {:in=>[:system, :user], :message=>"%{value} needs to be :system, :user"}, allow_nil: true

        # @return [String] The desired name for the flatpak remote to be registered under on the managed host.,When used with I(state=present), the remote will be added to the managed host under the specified I(name).,When used with I(state=absent) the remote with that name will be removed.
        attribute :name
        validates :name, presence: true, type: String

        # @return [:absent, :present, nil] Indicates the desired package state.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true
      end
    end
  end
end
