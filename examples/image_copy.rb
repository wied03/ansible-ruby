play 'image copy' do
  local_host

  # Task returns a lazy 'register variable'
  # When it's used in further tasks, it will enable 'register' on the task it came from
  result = task 'image copy' do
    ec2_ami_copy do
      source_region 'us-east-1'
      source_image_id 'ami-1b9e2570'
      name 'test'
      wait :no
      tags type: 'ansible',
           test: '2'
    end
  end

  task 'foobar' do
    debug { msg 'say hello' }

    # compiles to 'when', the ansible_ prefix is necessary since when is a reserved word in Ruby
    ansible_when "'stuff' in #{result.stdout}"
  end
end
