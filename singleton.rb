require 'byebug'
# BAAD
puts '----------Sem Singleton------------'

class RegularObject
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
puts RegularObject.new("Victor").name
puts RegularObject.new("Hugo").name

# GOOD Custom Singleton
puts '-------------Custom Singleton----------'

class CustomSingleton
  attr_reader :name
  private_class_method :new

  def initialize(name)
    @name = name
  end

  def self.instance(name)
    @instance ||= new(name) #instacia em cache
  end

end
class Hugo < CustomSingleton
  
end
# O construtor não é chamado enquanto a instacia em cache existir
puts CustomSingleton.instance("Victor").name
puts CustomSingleton.instance("Hugo").name
# Cria uma nova classe herdando os metodos de classe 
@hugo = Hugo.instance("Hugo").name

# GOOD Moodule Singleton - Recurso da linguagem ruby
puts '---------------Singleton Module-------------------------'
require 'singleton'
class SingletonModule
  include Singleton

  attr_accessor :name
end

sdb_user = SingletonModule.instance
sdb_user.name=("users")
puts sdb_user.name

sdb_emails = SingletonModule.instance
puts sdb_emails.name
# SingletonModule.new

# GOOD Class Singleton
puts '------------- Class Singleton --------------'
class ClassSingleton
  def self.name=(name)
    @name = name
  end

  def self.name
    @name
  end

end

puts ClassSingleton.name = "Victor"
puts ClassSingleton.name