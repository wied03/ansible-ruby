play 'block fun' do
  local_host

  ansible_include 'inclusion.yml' do
    variables howdy: 123
  end

  block do
    task 'say hello' do
      result = command 'uname'

      failed_when "'Linux' not in #{result.stdout}"
    end

    task 'and goodbye' do
      result = command 'uname -a'

      failed_when "'Darwin' not in #{result.stdout}"
    end

    ansible_when jinja('stuff')
  end
end
