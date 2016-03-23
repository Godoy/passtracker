require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user) }
  let(:user_admin) { FactoryGirl.build(:user, role: :admin) }


  it 'is an instance of User' do
    expect(user).to be_an User
  end

  context 'with all the fields' do
    it "is valid" do
      expect(user).to be_valid
    end
  end

  context 'when created' do
    context 'with no role' do
      it 'should have a simple default role' do
        expect(user.simple?).to be true
      end

      it 'can not access a new credential' do
        pending("something else getting finished")
        this_should_not_get_executed
      end
    end

    context 'with role admin' do
      it 'have role with value 1' do
        expect(user_admin[:role]).to be 1
      end
    end
  end

end
