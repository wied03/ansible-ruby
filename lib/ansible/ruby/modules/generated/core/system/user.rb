# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class User < Base
        # @return [String] Name of the user to create, remove or modify.
        attribute :name
        validates :name, presence: true, type: String

        # @return [String] Optionally sets the description (aka I(GECOS)) of user account.
        attribute :comment
        validates :comment, type: String

        # @return [String] Optionally sets the I(UID) of the user.
        attribute :uid
        validates :uid, type: String

        # @return [:yes, :no, nil] Optionally when used with the -u option, this option allows to change the user ID to a non-unique value.
        attribute :non_unique
        validates :non_unique, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Optionally sets the seuser type (user_u) on selinux enabled systems.
        attribute :seuser

        # @return [String] Optionally sets the user's primary group (takes a group name).
        attribute :group
        validates :group, type: String

        # @return [String] Puts the user in this comma-delimited list of groups. When set to the empty string ('groups='), the user is removed from all groups except the primary group.
        attribute :groups
        validates :groups, type: String

        # @return [:yes, :no, nil] If C(yes), will only add groups, not set them to just the list in I(groups).
        attribute :append
        validates :append, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] Optionally set the user's shell.
        attribute :shell
        validates :shell, type: String

        # @return [Object] Optionally set the user's home directory.
        attribute :home

        # @return [Object] Optionally set a home skeleton directory. Requires createhome option!
        attribute :skeleton

        # @return [Object] Optionally set the user's password to this crypted value.  See the user example in the github examples directory for what this looks like in a playbook. See U(http://docs.ansible.com/ansible/faq.html#how-do-i-generate-crypted-passwords-for-the-user-module) for details on various ways to generate these password values. Note on Darwin system, this value has to be cleartext. Beware of security issues.
        attribute :password

        # @return [:present, :absent, nil] Whether the account should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [:yes, :no, nil] Unless set to C(no), a home directory will be made for the user when the account is created or if the home directory does not exist.
        attribute :createhome
        validates :createhome, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes) when used with C(home=), attempt to move the user's home directory to the specified directory if it isn't there already.
        attribute :move_home
        validates :move_home, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When creating an account, setting this to C(yes) makes the user a system account.  This setting cannot be changed on existing users.
        attribute :system
        validates :system, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When used with C(state=absent), behavior is as with C(userdel --force).
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object] Optionally sets the user's login class for FreeBSD, OpenBSD and NetBSD systems.
        attribute :login_class

        # @return [:yes, :no, nil] When used with C(state=absent), behavior is as with C(userdel --remove).
        attribute :remove
        validates :remove, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] Whether to generate a SSH key for the user in question. This will B(not) overwrite an existing SSH key.
        attribute :generate_ssh_key
        validates :generate_ssh_key, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] Optionally specify number of bits in SSH key to create.
        attribute :ssh_key_bits
        validates :ssh_key_bits, type: Fixnum

        # @return [String] Optionally specify the type of SSH key to generate. Available SSH key types will depend on implementation present on target host.
        attribute :ssh_key_type
        validates :ssh_key_type, type: String

        # @return [String] Optionally specify the SSH key filename. If this is a relative filename then it will be relative to the user's home directory.
        attribute :ssh_key_file
        validates :ssh_key_file, type: String

        # @return [String] Optionally define the comment for the SSH key.
        attribute :ssh_key_comment
        validates :ssh_key_comment, type: String

        # @return [Object] Set a passphrase for the SSH key.  If no passphrase is provided, the SSH key will default to having no passphrase.
        attribute :ssh_key_passphrase

        # @return [:always, :on_create, nil] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [String] An expiry time for the user in epoch, it will be ignored on platforms that do not support this. Currently supported on Linux and FreeBSD.
        attribute :expires
        validates :expires, type: String
      end
    end
  end
end
