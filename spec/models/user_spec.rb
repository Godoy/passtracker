require 'rails_helper'

RSpec.describe User, type: :model do
  it 'should have a simple default role' do
    user = User.create!(name: 'Tester', email: 'asd@asd.com', password: '12345678')
    expect(user.simple?).to be true
  end
end
