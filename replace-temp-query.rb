# EXTRAIR VÁRIAVES TEMPÓRARIAS PARA MÉTODOS

# BAAD
def total_price
  tax = price * TAX_PERCENTAGE
  discount = price * (discount_percentage/100.0)
  price + tax - discount
end

# GOOD

def total_price
  pice + tax - discount
end

def tax
  price * TAX_PERCENTAGE
end

def discount
  price * (discount_percentage/100.0)
end

