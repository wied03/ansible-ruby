hosts %w(host1 host2)

task 'Copy something over' do
  result = foobar do
    src '/file1.conf'
    dest '/file2.conf'
  end

  changed_when "'no upgrade' in #{result.stdout}"
end

user 'centos'
