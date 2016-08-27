handler 'reboot' do
  command 'echo "would shutdown now"'
end

handler 'say hi' do
  debug do
    msg 'hello there'
  end
end
