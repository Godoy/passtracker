require 'rails_helper'

RSpec.describe CredentialType, type: :model do
  let(:credential_type) { FactoryGirl.build(:credential_type) }

  context 'validations' do
    describe "#name" do
      it "is required" do
        credential_type.name = nil
        credential_type.valid?
        expect(credential_type.errors).to have_key(:name)
      end
    end
  end
end
