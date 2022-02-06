require 'byebug'
# BAAD
def create_menu(title, body, button_text, cancellable)

end

# GOOD
def create_menu(title:, body:, button_text:, cancellable:)

end

create_menu(
  title: "Eu",
  body: "Body",
  button_text: "Button",
  cancellable: "Cancel"
)

# BAAD

def email_clients(clients)

  clients.each do |client|
    client_record = database.lookup(client)
    email(client) =  if client.active?
  end
  
end

# GOOD CLEAN
def email_active_clients(clients)

  clients
  .select(&method(:active_client?))
  .each(&method(:email))
  
end

def active_client?(client)
    client_record = database.lookup(client)
    client_record.active?
end

# Nomes de funções devem dizer o que elas fazem
# BAAD
def add_to_date(date, month)
  #...
end

date = DateTime.now

add_to_date(date, 1)

# GOOD CLEAN

def add_month_to_date(date, month)
  
end

date = DateTime.now
add_month_to_date(date, 1)