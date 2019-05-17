# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # Runs a remote command from a Linux host to a Windows host without WinRM being set up.
      # Can be run on the Ansible controller to bootstrap Windows hosts to get them ready for WinRM.
      class Psexec < Base
        # @return [String] The remote Windows host to connect to, can be either an IP address or a hostname.
        attribute :hostname
        validates :hostname, presence: true, type: String

        # @return [String, nil] The username to use when connecting to the remote Windows host.,This user must be a member of the C(Administrators) group of the Windows host.,Required if the Kerberos requirements are not installed or the username is a local account to the Windows host.,Can be omitted to use the default Kerberos principal ticket in the local credential cache if the Kerberos library is installed.,If I(process_username) is not specified, then the remote process will run under a Network Logon under this account.
        attribute :connection_username
        validates :connection_username, type: String

        # @return [String, nil] The password for I(connection_user).,Required if the Kerberos requirements are not installed or the username is a local account to the Windows host.,Can be omitted to use a Kerberos principal ticket for the principal set by I(connection_user) if the Kerberos library is installed and the ticket has already been retrieved with the C(kinit) command before.
        attribute :connection_password
        validates :connection_password, type: String

        # @return [Integer, nil] The port that the remote SMB service is listening on.
        attribute :port
        validates :port, type: Integer

        # @return [Boolean, nil] Will use SMB encryption to encrypt the SMB messages sent to and from the host.,This requires the SMB 3 protocol which is only supported from Windows Server 2012 or Windows 8, older versions like Windows 7 or Windows Server 2008 (R2) must set this to C(no) and use no encryption.,When setting to C(no), the packets are in plaintext and can be seen by anyone sniffing the network, any process options are included in this.
        attribute :encrypt
        validates :encrypt, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The timeout in seconds to wait when receiving the initial SMB negotiate response from the server.
        attribute :connection_timeout
        validates :connection_timeout, type: String

        # @return [String] The executable to run on the Windows host.
        attribute :executable
        validates :executable, presence: true, type: String

        # @return [String, nil] Any arguments as a single string to use when running the executable.
        attribute :arguments
        validates :arguments, type: String

        # @return [String, nil] Changes the working directory set when starting the process.
        attribute :working_directory
        validates :working_directory, type: String

        # @return [Symbol, nil] Will run the command as a detached process and the module returns immediately after starting the processs while the process continues to run in the background.,The I(stdout) and I(stderr) return values will be null when this is set to C(yes).,The I(stdin) option does not work with this type of process.,The I(rc) return value is not set when this is C(yes)
        attribute :asynchronous
        validates :asynchronous, type: Symbol

        # @return [Boolean, nil] Runs the remote command with the user's profile loaded.
        attribute :load_profile
        validates :load_profile, inclusion: {:in=>[true, false], :message=>"%{value} needs to be true, false"}, allow_nil: true

        # @return [String, nil] The user to run the process as.,This can be set to run the process under an Interactive logon of the specified account which bypasses limitations of a Network logon used when this isn't specified.,If omitted then the process is run under the same account as I(connection_username) with a Network logon.,Set to C(System) to run as the builtin SYSTEM account, no password is required with this account.,If I(encrypt) is C(no), the username and password are sent as a simple XOR scrambled byte string that is not encrypted. No special tools are required to get the username and password just knowledge of the protocol.
        attribute :process_username
        validates :process_username, type: String

        # @return [String, nil] The password for I(process_username).,Required if I(process_username) is defined and not C(System).
        attribute :process_password
        validates :process_password, type: String

        # @return [String, nil] The integrity level of the process when I(process_username) is defined and is not equal to C(System).,When C(default), the default integrity level based on the system setup.,When C(elevated), the command will be run with Administrative rights.,When C(limited), the command will be forced to run with non-Administrative rights.
        attribute :integrity_level
        validates :integrity_level, type: String

        # @return [Symbol, nil] Will run the process as an interactive process that shows a process Window of the Windows session specified by I(interactive_session).,The I(stdout) and I(stderr) return values will be null when this is set to C(yes).,The I(stdin) option does not work with this type of process.
        attribute :interactive
        validates :interactive, type: Symbol

        # @return [Integer, nil] The Windows session ID to use when displaying the interactive process on the remote Windows host.,This is only valid when I(interactive) is C(yes).,The default is C(0) which is the console session of the Windows host.
        attribute :interactive_session
        validates :interactive_session, type: Integer

        # @return [String, nil] Set the command's priority on the Windows host.,See U(https://msdn.microsoft.com/en-us/library/windows/desktop/ms683211.aspx) for more details.
        attribute :priority
        validates :priority, type: String

        # @return [Symbol, nil] Shows the process UI on the Winlogon secure desktop when I(process_username) is C(System).
        attribute :show_ui_on_logon_screen
        validates :show_ui_on_logon_screen, type: Symbol

        # @return [Integer, nil] The timeout in seconds that is placed upon the running process.,A value of C(0) means no timeout.
        attribute :process_timeout
        validates :process_timeout, type: Integer

        # @return [String, nil] Data to send on the stdin pipe once the process has started.,This option has no effect when I(interactive) or I(asynchronous) is C(yes).
        attribute :stdin
        validates :stdin, type: String
      end
    end
  end
end
