play 'block fun' do
  local_host

  block do
    task 'say hello' do
      command 'uname'
    end

    task 'and goodbye' do
      command 'uname -a'
    end
  end
end
