require 'rails_helper'

RSpec.describe Credential, type: :model do
  let(:credential) { FactoryGirl.build(:credential) }

  context 'validations' do
    describe "#name" do
      it "is required" do
        credential.name = nil
        credential.valid?
        expect(credential.errors).to have_key(:name)
      end
    end

    describe "#credential_type" do
      it "is required" do
        credential.credential_type = nil
        credential.valid?
        expect(credential.errors).to have_key(:credential_type)
      end
    end
  end
end
