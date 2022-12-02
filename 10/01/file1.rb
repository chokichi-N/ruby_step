file_path = 'sample.txt'

# テキストファイルに書き込み
open(file_path, 'w') do |f|
  f.puts('Hello, World!')
end

# テキストファイルからの読み込み
open(file_path, 'r') do |f|
  p f.read
end

# テキストファイルへの追記書き込み
open(file_path, 'a') do |f|
  f.puts('Hello, World!!')
end

# テキストファイルからの読み込み
open(file_path, 'r') do |f|
  p f.read
end
