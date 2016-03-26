class CredentialType < ActiveRecord::Base
  validates :name, presence: true
end
