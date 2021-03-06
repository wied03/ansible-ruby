# frozen_string_literal: true

task 'Copy something over' do
  copy do
    src '/file1.conf'
    dest '/file2.conf'
  end
end

ansible_include 'something.yml'

task 'Copy something else over' do
  copy do
    src '/file3.conf'
    dest '/file4.conf'
  end
end
