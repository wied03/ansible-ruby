task 'Copy something over' do
  copy do
    src '/file1.conf'
    dest '/file2.conf'
  end
end

task 'Copy something else over' do
  copy do
    src '/file3.conf'
    dest '/file4.conf'
  end
end
