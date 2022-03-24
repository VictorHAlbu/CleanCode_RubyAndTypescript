# QUEBRAR MÉTODOS GRANDES EM MENORES

# BAAD
def print_owing(amout)
  print_banner
  puts "name: #{@name}"
  puts "amaout: #{amout}"
end

# GOOD

def print_owing
  print_banner
  print_details amout
end

def print_details(amout)
  puts "name: #{@name}"
  puts "amaout: #{amout}"
end