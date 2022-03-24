# EXTRAIR MÉTODOS PARA CLASSES

# BAAD
class TaxSimulator
  def initialize person
    @person = person
  end

  def simulate_return(income: nil, expenses: 0, type: :dependent_worker)
    return_value = 0
    number_of_people_under_roof = person.dependents.count + 1


    if type == :dependent_worker
      return_value = income * 0.02
    else
      return_value = income * 0.04
    end  

    if number_of_people_under_roof > 2
      return_value *= 1.10
    end

    if income - expenses > income * 0.02
      return_value += expenses * 0.05 
    end

    return_value -= expenses * 0.30
    
  end

end

# GOOD

class TaxAlgorithm
  def initialize(income: nil, expenses: 0, type: :dependent_worker, dependents: 1)
    @income = income
    @expenses = expenses
    @type = type
    @return_value = 0
    @number_of_people_under_roof = dependents
  end

  def compute
    process_type
    process_umber_of_people
    process_income_expense_difference
    deduct_expenses
  end


end

def TaxSimulator
  def initialize person
    @person = person
  end

  def simulate_return(income: nil, expenses: 0, type: :dependent_worker)
    algorithm = TaxAlgorithm.new(income: income, expenses: expenses, 
                                  type: type, dependents: total_dependents)
      
    algorithm.compute  
  end

end