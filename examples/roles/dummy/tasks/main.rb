# frozen_string_literal: true
task 'say hello' do
  with_items(%w(a b c)) do |item|
    result = shell "ls #{item} || true" do
      chdir '/tmp'
    end

    changed_when "'No such file' in #{result.stderr}"

    notify 'reboot'
  end
end

task 'middle' do
  debug { msg 'foo' }
end

task 'and goodbye' do
  stuff = {
    cmd1: {
      foobar: '123'
    },
    cmd2: {
      foobar: '456'
    }
  }

  with_dict(stuff) do |key, value|
    # will run ls cmd1 123 and ls cmd2 456
    result = command "ls #{key} #{value.foobar}" do
      chdir '/tmp'
    end

    changed_when "'No such filesss' in #{result.stderr}"
  end
end
