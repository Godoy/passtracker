class Client < ActiveRecord::Base
  has_many :credentials
  has_many :projects

  validates :name, presence: true
end
