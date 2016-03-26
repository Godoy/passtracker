require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:project) { FactoryGirl.build(:project) }

  context 'validations' do
    describe "#name" do
      it "is required" do
        project.name = nil
        project.valid?
        expect(project.errors).to have_key(:name)
      end
    end

    describe "#client" do
      it "is required" do
        project.client = nil
        project.valid?
        expect(project.errors).to have_key(:client)
      end
    end
  end
end
