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

# GOOD
def email_active_clients(clients)

  clients
  .select(&method(:active_client?))
  .each(&method(:email))
  
end

def active_client?
    client_record = database.lookup(client)
    client_record.active?
end