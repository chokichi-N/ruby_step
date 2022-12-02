tel = '090123456789'

data = tel.match(/(\d{3})(\d{4})(\d{4})/)
p data[0]
p data[1]
p data[2]
p data[3]
