class Company
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :subdomain, type: String
  field :url, type: String
  has_many :users
  has_many :projects
  validates :name, presence: true
  validates :subdomain, 
    presence: true,
    format: { with: /^[a-z0-9_]+$/ }, 
    length: { maximum: 32 }, 
    exclusion: { in: %w(www mail ftp) }
end
