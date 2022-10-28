begin
  # TypeError例外を発生
  raise TypeError, 'original error'
rescue => e
  p e.message
  # 例外処理後に例外を再発生
  raise
end
