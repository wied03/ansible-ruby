play 'image copy' do
  local_host

  task 'image copy' do
    ec2_ami_copy do
      source_region 'us-east-1'
      source_image_id 'ami-1b9e2570'
      name 'test'
      wait :no
      tags type: 'ansible',
           test: '2'
    end
  end
end
