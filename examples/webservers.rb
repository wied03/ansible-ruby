play 'webserver install' do
  local_host

  task 'EC2 load balancer' do
    ec2_elb_lb do
      state :present
      name 'lb_01'
      security_group_ids %w(sg-3c4fca59 sg-cabcc0ad)
      # TODO: This should either fail since it's not an array or should be put into an array behind the scenes
      listeners protocol: 'http',
                load_balancer_port: 80,
                instance_port: 80
    end
  end
end
