task 'say hello' do
  result = command 'ls howdy' do
    chdir '/tmp'
  end

  changed_when "'howdy' in #{result.stdout}"
end
