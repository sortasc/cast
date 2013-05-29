class Company
  include Mongoid::Document
  field :name, type: String
  field :url, type: String
  has_many :users
  has_many :projects
  validates :name, presence: true
end
