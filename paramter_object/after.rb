#Criar objetos que represente parametros

class charge
  def initialize(base_price, tax_rate, imported)
    @base_price = base_price
    @tax_rate = tax_rate
    @imported = imported
  end

  def total
    result = @base_price + @base_price * @tax_rate
    result += @base_price * 0.1 if @imported
    result
  end
end

class Account
  
  def add_charge(charge)
    @charges = charge
  end

  def total_charge
    @charges.inject(0) { |total_for_account, charge| total_for_account + charge.total }
  end
end