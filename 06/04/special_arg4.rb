def calc_tax(*values)
  price = values[0]
  tax_rate = values[1]
  tax = (price * tax_rate).to_i
  tax_included = price + tax
  { tax: tax, tax_included: tax_included }
end

p calc_tax(100, 0.08)
