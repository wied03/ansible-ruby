# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Adds or removes SSH authorized keys for particular user accounts
      class Authorized_key < Base
        # @return [String] The username on the remote host whose authorized_keys file will be modified
        attribute :user
        validates :user, presence: true, type: String

        # @return [String] The SSH public key(s), as a string or (since 1.9) url (https://github.com/username.keys)
        attribute :key
        validates :key, presence: true, type: String

        # @return [String, nil] Alternate path to the authorized_keys file
        attribute :path
        validates :path, type: String

        # @return [:yes, :no, nil] Whether this module should manage the directory of the authorized key file.  If set, the module will create the directory, as well as set the owner and permissions of an existing directory. Be sure to set C(manage_dir=no) if you are using an alternate directory for authorized_keys, as set with C(path), since you could lock yourself out of SSH access. See the example below.
        attribute :manage_dir
        validates :manage_dir, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:present, :absent, nil] Whether the given key (with the given key_options) should or should not be in the file
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Array<String>, String, nil] A string of ssh key options to be prepended to the key in the authorized_keys file
        attribute :key_options
        validates :key_options, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] Whether to remove all other non-specified keys from the authorized_keys file. Multiple keys can be specified in a single C(key) string value by separating them by newlines.,This option is not loop aware, so if you use C(with_) , it will be exclusive per iteration of the loop, if you want multiple keys in the file you need to pass them all to C(key) in a single batch as mentioned above.
        attribute :exclusive
        validates :exclusive, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This only applies if using a https url as the source of the keys. If set to C(no), the SSL certificates will not be validated.,This should only set to C(no) used on personally controlled sites using self-signed certificates as it avoids verifying the source site.,Prior to 2.1 the code worked as if this was set to C(yes).
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Change the comment on the public key. Rewriting the comment is useful in cases such as fetching it from GitHub or GitLab.,If no comment is specified, the existing comment will be kept.
        attribute :comment

        # @return [:yes, :no, nil] Follow path symlink instead of replacing it
        attribute :follow
        validates :follow, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
