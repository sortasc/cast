class Project
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  belongs_to :company
  has_many :rosters
  validates :name, presence: true
end
