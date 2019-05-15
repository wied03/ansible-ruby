# frozen_string_literal: true

play 'webserver install' do
  local_host

  task 'EC2 load balancer' do
    ec2_elb_lb do
      state :present
      name 'lb-01'
      security_group_ids %w[sg-3c4fca59 sg-cabcc0ad]
      listeners protocol: 'http',
                load_balancer_port: 80,
                instance_port: 80
      subnets 'subnet-637e594b'
    end
  end
end
