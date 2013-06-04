class Project
  include Mongoid::Document
  include Tenant
  field :name, type: String
  field :description, type: String
  belongs_to :company
  has_many :rosters
  validates :name, :company_id, presence: true
end
