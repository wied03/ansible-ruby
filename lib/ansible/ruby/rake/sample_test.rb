play 'the play name' do
  hosts %w(host1 host2)

  task 'Copy something over' do
    copy do
      src '/file1.conf'
      dest '/file2.conf'
    end
  end

  user 'centos'
end
