a = 1

begin
  p a
rescue => e
  p 'This is rescue block.'
  p e
ensure
  p 'This is ensure block.'
end
