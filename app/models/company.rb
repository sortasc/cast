class Company
  include Mongoid::Document
  field :name, type: String
  field :url, type: String
  field :email, type: String
  field :subdomain, type: String
  has_many :users
  has_many :projects
  validates :name, presence: true
  validates :subdomain,
  	uniqueness: true,
  	format: { with: /^[a-z0-9_]+$/ }, 
  	length: { maximum: 32 }, 
  	exclusion: { in: %w(www mail ftp) }

  def self.current_id=(id)
    Thread.current[:company_id] = id
  end
  
  def self.current_id
    Thread.current[:company_id]
  end
end
