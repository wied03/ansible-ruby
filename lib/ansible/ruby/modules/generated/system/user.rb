# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Manage user accounts and user attributes.
      # For Windows targets, use the M(win_user) module instead.
      class User < Base
        # @return [String] Name of the user to create, remove or modify.
        attribute :name
        validates :name, presence: true, type: String

        # @return [Integer, nil] Optionally sets the I(UID) of the user.
        attribute :uid
        validates :uid, type: Integer

        # @return [String, nil] Optionally sets the description (aka I(GECOS)) of user account.
        attribute :comment
        validates :comment, type: String

        # @return [Symbol, nil] macOS only, optionally hide the user from the login window and system preferences.,The default will be 'True' if the I(system) option is used.
        attribute :hidden
        validates :hidden, type: Symbol

        # @return [:yes, :no, nil] Optionally when used with the -u option, this option allows to change the user ID to a non-unique value.
        attribute :non_unique
        validates :non_unique, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Optionally sets the seuser type (user_u) on selinux enabled systems.
        attribute :seuser

        # @return [String, nil] Optionally sets the user's primary group (takes a group name).
        attribute :group
        validates :group, type: String

        # @return [Array<String>, String, nil] List of groups user will be added to. When set to an empty string C(''), C(null), or C(~), the user is removed from all groups except the primary group. (C(~) means C(null) in YAML),Before version 2.3, the only input format allowed was a comma separated string. Now this parameter accepts a list as well as a comma separated string.
        attribute :groups
        validates :groups, type: TypeGeneric.new(String)

        # @return [:yes, :no, nil] If C(yes), add the user to the groups specified in C(groups).,If C(no), user will only be added to the groups specified in C(groups), removing them from all other groups.
        attribute :append
        validates :append, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Optionally set the user's shell.,On macOS, before version 2.5, the default shell for non-system users was /usr/bin/false. Since 2.5, the default shell for non-system users on macOS is /bin/bash.,On other operating systems, the default shell is determined by the underlying tool being used. See Notes for details.
        attribute :shell
        validates :shell, type: String

        # @return [Object, nil] Optionally set the user's home directory.
        attribute :home

        # @return [Object, nil] Optionally set a home skeleton directory. Requires create_home option!
        attribute :skeleton

        # @return [Object, nil] Optionally set the user's password to this crypted value.,On macOS systems, this value has to be cleartext. Beware of security issues.,See U(https://docs.ansible.com/ansible/faq.html#how-do-i-generate-crypted-passwords-for-the-user-module) for details on various ways to generate these password values.
        attribute :password

        # @return [:absent, :present, nil] Whether the account should exist or not, taking action if the state is different from what is stated.
        attribute :state
        validates :state, inclusion: {:in=>[:absent, :present], :message=>"%{value} needs to be :absent, :present"}, allow_nil: true

        # @return [:yes, :no, nil] Unless set to C(no), a home directory will be made for the user when the account is created or if the home directory does not exist.,Changed from C(createhome) to C(create_home) in version 2.5.
        attribute :create_home
        validates :create_home, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] If set to C(yes) when used with C(home=), attempt to move the user's old home directory to the specified directory if it isn't there already and the old home exists.
        attribute :move_home
        validates :move_home, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] When creating an account C(state=present), setting this to C(yes) makes the user a system account. This setting cannot be changed on existing users.
        attribute :system
        validates :system, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This only affects C(state=absent), it forces removal of the user and associated directories on supported platforms. The behavior is the same as C(userdel --force), check the man page for C(userdel) on your system for details and support.
        attribute :force
        validates :force, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [:yes, :no, nil] This only affects C(state=absent), it attempts to remove directories associated with the user. The behavior is the same as C(userdel --remove), check the man page for details and support.
        attribute :remove
        validates :remove, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Object, nil] Optionally sets the user's login class, a feature of most BSD OSs.
        attribute :login_class

        # @return [:yes, :no, nil] Whether to generate a SSH key for the user in question. This will B(not) overwrite an existing SSH key.
        attribute :generate_ssh_key
        validates :generate_ssh_key, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String, nil] Optionally specify number of bits in SSH key to create.
        attribute :ssh_key_bits
        validates :ssh_key_bits, type: String

        # @return [String, nil] Optionally specify the type of SSH key to generate. Available SSH key types will depend on implementation present on target host.
        attribute :ssh_key_type
        validates :ssh_key_type, type: String

        # @return [String, nil] Optionally specify the SSH key filename. If this is a relative filename then it will be relative to the user's home directory.
        attribute :ssh_key_file
        validates :ssh_key_file, type: String

        # @return [String, nil] Optionally define the comment for the SSH key.
        attribute :ssh_key_comment
        validates :ssh_key_comment, type: String

        # @return [Object, nil] Set a passphrase for the SSH key.  If no passphrase is provided, the SSH key will default to having no passphrase.
        attribute :ssh_key_passphrase

        # @return [:always, :on_create, nil] C(always) will update passwords if they differ.  C(on_create) will only set the password for newly created users.
        attribute :update_password
        validates :update_password, inclusion: {:in=>[:always, :on_create], :message=>"%{value} needs to be :always, :on_create"}, allow_nil: true

        # @return [Integer, nil] An expiry time for the user in epoch, it will be ignored on platforms that do not support this. Currently supported on GNU/Linux, FreeBSD, and DragonFlyBSD.,Since version 2.6 you can remove the expiry time specify a negative value. Currently supported on GNU/Linux and FreeBSD.
        attribute :expires
        validates :expires, type: Integer

        # @return [Symbol, nil] Lock the password (usermod -L, pw lock, usermod -C). BUT implementation differs on different platforms, this option does not always mean the user cannot login via other methods. This option does not disable the user, only lock the password. Do not change the password in the same task. Currently supported on Linux, FreeBSD, DragonFlyBSD, NetBSD.
        attribute :password_lock
        validates :password_lock, type: Symbol

        # @return [:yes, :no, nil] Forces the use of "local" command alternatives on platforms that implement it. This is useful in environments that use centralized authentification when you want to manipulate the local users. I.E. it uses `luseradd` instead of `useradd`.,This requires that these commands exist on the targeted host, otherwise it will be a fatal error.
        attribute :local
        validates :local, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true
      end
    end
  end
end
