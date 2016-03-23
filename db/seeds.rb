User.create(email: "admin@godoy.net.br", password: "passtracker", role: :admin)
User.create(email: "simple@godoy.net.br", password: "passtracker", role: :simple)

Client.create(name: Faker::Company.name)
CredentialType.create(name: "FTP")
Project.create(name: Faker::App.name, client: Client.first)

Credential.create(name: Faker::App.name, host: Faker::Internet.url, port: 27,
  user: Faker::Internet.user_name, password: Faker::Internet.password, client: Client.first,
  project: Project.first)
