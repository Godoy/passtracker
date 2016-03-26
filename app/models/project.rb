class Project < ActiveRecord::Base
  belongs_to :client

  validates :name, :client, presence: true

end
