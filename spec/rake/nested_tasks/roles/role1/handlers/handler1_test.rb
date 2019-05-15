# frozen_string_literal: true

handler 'reboot' do
  command 'shutdown -r now'
end
