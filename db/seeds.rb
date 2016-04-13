User.create(name: "Admin", email: "admin@godoy.net.br", password: "passtracker", role: :admin)
User.create(name: "Simple", email: "simple@godoy.net.br", password: "passtracker", role: :simple)

clients = []
for i in 1..5
  clients << Client.create(name: Faker::Company.name)
end

credentials = []
credentials << CredentialType.create(name: "FTP")
credentials << CredentialType.create(name: "Database")

projects = []
for i in 1..10
  projects << Project.create(name: Faker::App.name, client: Client.first)
end

for i in 1..5
Credential.create!(name: Faker::App.name, host: Faker::Internet.url, port: 27,
  user: Faker::Internet.user_name, password: Faker::Internet.password, client: clients.sample,
  project: projects.sample, credential_type: credentials.sample)
end
