# What the DSL could look like

task 'Copy something' do
  copy do
    src '/file1.conf'
    dest '/file2.conf'
  end
end

task 'Atomic host upgrade' do
  command '/usr/bin/atomic host upgrade'
end

task 'Another task' do
  atomic_result = command '/usr/bin/atomic host upgrade' do
    chdir '/foobar'
  end

  become
  become_user 'root'

  changed_when "'No upgrade available' not in #{atomic_result.stdout}"
end
