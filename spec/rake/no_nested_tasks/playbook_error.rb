# frozen_string_literal: true
play 'the play name' do
  hosts %w(host1 host2)

  ansible_iinclude 'inclusion.yml' do
    variables howdy: 123
  end

  task 'Copy something over' do
    copy do
      src '/file1.conf'
      dest '/file2.conf'
    end
  end
end
