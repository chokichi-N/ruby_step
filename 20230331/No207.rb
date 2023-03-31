# 入力された値を文字列で受け取る
a, b = gets.chomp.split.map(&:to_i)
include_three_numbers = []

a.upto(b) do |i|
  include_three_numbers << i if (i % 3).zero? || i.to_s.include?('3')
end

puts include_three_numbers
