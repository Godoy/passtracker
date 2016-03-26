require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { FactoryGirl.build(:user) }
  let(:user_admin) { FactoryGirl.build(:user, role: :admin) }

  it 'is an instance of User' do
    expect(user).to be_an User
  end

  context 'validations' do
    describe "#name" do
      it "is required" do
        user.name = nil
        user.valid?
        expect(user.errors).to have_key(:name)
      end
    end

    describe "#email" do
      it "is required" do
        user.email = nil
        user.valid?
        expect(user.errors).to have_key(:email)
      end

      it 'does not allow invalid email' do
        user.email = 'a b'
        user.valid?
        expect(user.errors).to have_key(:email)
      end
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
