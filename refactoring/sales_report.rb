# BAAD - Relatório de Vendas
@sold_items = %w( onions garlic potatoes )

def print_report
  puts "*** Sales Report for #{Time.new.strftime("%d/%m/%Y")} ***"
  @sold_items.each { |i| puts i }
  puts "*** End of Sales Report ***"
end

print_report

# GOOD

def print_report
  print_header
  print_items
  print_footer
end

def print_header
  puts "*** Sales Report for #{current_date} ***"
end

def current_date
  Time.new.strftime("%d/%m/%Y")
end

def print_items
  @sold_items.each { |i| puts i }
end

def print_footer
  puts "*** End of Sales Report ***"
end

