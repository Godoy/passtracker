require 'rails_helper'

RSpec.describe Client, type: :model do
  let(:client) { FactoryGirl.build(:client) }

  context 'validations' do
    describe "#name" do
      it "is required" do
        client.name = nil
        client.valid?
        expect(client.errors).to have_key(:name)
      end
    end
  end
end
