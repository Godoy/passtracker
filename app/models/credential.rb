class Credential < ActiveRecord::Base
  belongs_to :project
  belongs_to :client
  belongs_to :credential_type
end
