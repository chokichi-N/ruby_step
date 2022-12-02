words = %w(after all air and animal answer around)

p words.select { |word| /^a.*r$/ =~ word }
