play 'webserver install' do
  hosts 'host1'

  task 'install nginx' do
    yum do
      name 'nginx'
      state :absent
    end
  end

  task 'EC2 load balancer' do
    ec2_elb_lb do
      state :present
      name 'lb_01'
      security_group_ids %w(id1 id2)
      listeners({22 => 'tcp'})
    end
  end
end
