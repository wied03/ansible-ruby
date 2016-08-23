# See LICENSE.txt at root of repository
# GENERATED FILE - DO NOT EDIT!!
require 'ansible/ruby/modules/base'

module Ansible
  module Ruby
    module Modules
      class Ec2_elb < Base
        # @return [Object] register or deregister the instance
        attribute :state
        validates :state, presence: true, inclusion: {:in=>[:present, :absent], :message=>"%{value} needs to be :present, :absent"}

        # @return [Object] EC2 Instance ID
        attribute :instance_id
        validates :instance_id, presence: true

        # @return [String] List of ELB names, required for registration. The ec2_elbs fact should be used if there was a previous de-register.
        attribute :ec2_elbs
        validates :ec2_elbs, type: String

        # @return [TrueClass] Whether to enable the availability zone of the instance on the target ELB if the availability zone has not already been enabled. If set to no, the task will fail if the availability zone is not enabled on the ELB.
        attribute :enable_availability_zone
        validates :enable_availability_zone, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [TrueClass] Wait for instance registration or deregistration to complete successfully before returning.
        attribute :wait
        validates :wait, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [String] When set to "no", SSL certificates will not be validated for boto versions >= 2.6.0.
        attribute :validate_certs
        validates :validate_certs, inclusion: {:in=>[:yes, :no], :message=>"%{value} needs to be :yes, :no"}, allow_nil: true

        # @return [Fixnum] Number of seconds to wait for an instance to change state. If 0 then this module may return an error if a transient error occurs. If non-zero then any transient errors are ignored until the timeout is reached. Ignored when wait=no.
        attribute :wait_timeout
        validates :wait_timeout, type: Fixnum
      end
    end
  end
end