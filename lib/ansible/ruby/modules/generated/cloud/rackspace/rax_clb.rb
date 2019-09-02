# frozen_string_literal: true
# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      # creates / deletes a Rackspace Public Cloud load balancer.
      class Rax_clb < Base
        # @return [:RANDOM, :LEAST_CONNECTIONS, :ROUND_ROBIN, :WEIGHTED_LEAST_CONNECTIONS, :WEIGHTED_ROUND_ROBIN, nil] algorithm for the balancer being created
        attribute :algorithm
        validates :algorithm, expression_inclusion: {:in=>[:RANDOM, :LEAST_CONNECTIONS, :ROUND_ROBIN, :WEIGHTED_LEAST_CONNECTIONS, :WEIGHTED_ROUND_ROBIN], :message=>"%{value} needs to be :RANDOM, :LEAST_CONNECTIONS, :ROUND_ROBIN, :WEIGHTED_LEAST_CONNECTIONS, :WEIGHTED_ROUND_ROBIN"}, allow_nil: true

        # @return [Object, nil] A hash of metadata to associate with the instance
        attribute :meta

        # @return [String, nil] Name to give the load balancer
        attribute :name
        validates :name, type: String

        # @return [Integer, nil] Port for the balancer being created
        attribute :port
        validates :port, type: Integer

        # @return [:DNS_TCP, :DNS_UDP, :FTP, :HTTP, :HTTPS, :IMAPS, :IMAPv4, :LDAP, :LDAPS, :MYSQL, :POP3, :POP3S, :SMTP, :TCP, :TCP_CLIENT_FIRST, :UDP, :UDP_STREAM, :SFTP, nil] Protocol for the balancer being created
        attribute :protocol
        validates :protocol, expression_inclusion: {:in=>[:DNS_TCP, :DNS_UDP, :FTP, :HTTP, :HTTPS, :IMAPS, :IMAPv4, :LDAP, :LDAPS, :MYSQL, :POP3, :POP3S, :SMTP, :TCP, :TCP_CLIENT_FIRST, :UDP, :UDP_STREAM, :SFTP], :message=>"%{value} needs to be :DNS_TCP, :DNS_UDP, :FTP, :HTTP, :HTTPS, :IMAPS, :IMAPv4, :LDAP, :LDAPS, :MYSQL, :POP3, :POP3S, :SMTP, :TCP, :TCP_CLIENT_FIRST, :UDP, :UDP_STREAM, :SFTP"}, allow_nil: true

        # @return [:present, :absent, nil] Indicate desired state of the resource
        attribute :state
        validates :state, expression_inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}, allow_nil: true

        # @return [Integer, nil] timeout for communication between the balancer and the node
        attribute :timeout
        validates :timeout, type: Integer

        # @return [:PUBLIC, :SERVICENET, nil] type of interface for the balancer being created
        attribute :type
        validates :type, expression_inclusion: {:in=>[:PUBLIC, :SERVICENET], :message=>"%{value} needs to be :PUBLIC, :SERVICENET"}, allow_nil: true

        # @return [Object, nil] Virtual IP ID to use when creating the load balancer for purposes of sharing an IP with another load balancer of another protocol
        attribute :vip_id

        # @return [:yes, :no, nil] wait for the balancer to be in state 'running' before returning
        attribute :wait
        validates :wait, expression_inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Integer, nil] how long before wait gives up, in seconds
        attribute :wait_timeout
        validates :wait_timeout, type: Integer
      end
    end
  end
end
