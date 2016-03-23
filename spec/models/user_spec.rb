require 'rails_helper'

RSpec.describe User, type: :model do

  context 'when created' do
    let(:user) { User.create!(name: 'Tester', email: 'asd@asd.com', password: '12345678') }

    context 'with no role' do
      it 'should have a simple default role' do
        expect(user.simple?).to be true
      end

      it 'can not access a new credential' do
        pending("something else getting finished")
        this_should_not_get_executed
      end
    end

  end

end
