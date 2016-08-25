task 'say hello' do
  result = command jinja('a_command | default("ls howdy")') do
    chdir '/tmp'
  end

  changed_when "'howdy' in #{result.stdout}"
end
