hosts %w(host1 host2)

name 'the play'

task 'Copy something over' do
  result = foobar do
    src '/file1.conf'
    dest '/file2.conf'
  end

  become
  notify 'handler1'
  changed_when "'no upgrade' in #{result.stdout}"
end

user 'centos'

