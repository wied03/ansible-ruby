# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Rax_clb < Base
        # @return [String] algorithm for the balancer being created
        attribute :algorithm
        validates :algorithm, inclusion: {:in=>[:RANDOM, :LEAST_CONNECTIONS, :ROUND_ROBIN, :WEIGHTED_LEAST_CONNECTIONS, :WEIGHTED_ROUND_ROBIN], :message=>"%{value} needs to be :RANDOM, :LEAST_CONNECTIONS, :ROUND_ROBIN, :WEIGHTED_LEAST_CONNECTIONS, :WEIGHTED_ROUND_ROBIN"}, allow_nil: true

        # @return [Object] A hash of metadata to associate with the instance
        attribute :meta

        # @return [String] Name to give the load balancer
        attribute :name
        validates :name, type: String

        # @return [Fixnum] Port for the balancer being created
        attribute :port
        validates :port, type: Fixnum

        # @return [String] Protocol for the balancer being created
        attribute :protocol
        validates :protocol, inclusion: {:in=>[:DNS_TCP, :DNS_UDP, :FTP, :HTTP, :HTTPS, :IMAPS, :IMAPv4, :LDAP, :LDAPS, :MYSQL, :POP3, :POP3S, :SMTP, :TCP, :TCP_CLIENT_FIRST, :UDP, :UDP_STREAM, :SFTP], :message=>"%{value} needs to be :DNS_TCP, :DNS_UDP, :FTP, :HTTP, :HTTPS, :IMAPS, :IMAPv4, :LDAP, :LDAPS, :MYSQL, :POP3, :POP3S, :SMTP, :TCP, :TCP_CLIENT_FIRST, :UDP, :UDP_STREAM, :SFTP"}, allow_nil: true

        # @return [String] Indicate desired state of the resource
        attribute :state
        validates :state, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Fixnum] timeout for communication between the balancer and the node
        attribute :timeout
        validates :timeout, type: Fixnum

        # @return [String] type of interface for the balancer being created
        attribute :type
        validates :type, inclusion: {:in=>[:PUBLIC, :SERVICENET], :message=>"%{value} needs to be :PUBLIC, :SERVICENET"}, allow_nil: true

        # @return [Object] Virtual IP ID to use when creating the load balancer for purposes of sharing an IP with another load balancer of another protocol
        attribute :vip_id

        # @return [String] wait for the balancer to be in state 'running' before returning
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end