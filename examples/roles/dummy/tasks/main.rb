task 'say hello' do
  with_items(%w(a b c)) do |item|
    result = shell "ls #{item} || true" do
      chdir '/tmp'
    end

    failed_when "'No such filesss' in #{result.stderr}"
  end
end

task 'and goodbye' do
  stuff = {
    cmd1: {
      foobar: '123'
    }
  }

  with_dict(stuff) do |key, value|
    # will run ls cmd1 123
    command "ls #{key} #{value.foobar}" do
      chdir '/tmp'
    end
  end
end
