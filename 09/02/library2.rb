require 'open-uri'

file = URI.open('http://www.google.co.jp')
p file.read
