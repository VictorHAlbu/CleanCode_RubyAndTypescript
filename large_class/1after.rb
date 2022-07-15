#Usando Polymorphismo

class Employee
  def self.build(type: employee)
    const_get((type.capitalize)).new
  end

  def bonus
    0
  end
end

class Manager < Employee
  def bonus
    800
  end
end

class Boss < Employee
  def bonus
    1500
  end
end