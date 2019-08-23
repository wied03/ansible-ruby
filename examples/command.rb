# frozen_string_literal: true

play 'command fun' do
  local_host

  role 'dummy', when: 'true'
end
