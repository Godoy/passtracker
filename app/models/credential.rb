class Credential < ActiveRecord::Base
  belongs_to :project
  belongs_to :client
  belongs_to :credential_type

  validates :name, :credential_type, presence: true

end
