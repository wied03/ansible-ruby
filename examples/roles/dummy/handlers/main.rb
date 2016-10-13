handler 'reboot' do
  ansible_include 'handler_include.yml' do
    static true
  end
end

handler 'say hi' do
  debug do
    msg 'hello there'
  end
end
