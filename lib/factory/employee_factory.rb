class EmployeeFactory
  
  def self.create_employee(type)

    case type
    when "fulltime"
      FullTimeEmployee.new
    when "parttime"
      PartTimeEmployee.new
    when "contractor"
      FullTimeEmployee.new
    end

  end
  def type
    raise NotImplementedError
  end

  def hourly_rate
    raise NotImplementedError
  end
end
