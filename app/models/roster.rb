class Roster
  include Mongoid::Document
	include PublicActivity::Common
  # Journey, workday

  field :starts_at, type: Time
  field :ends_at, type: Time
  belongs_to :user
  belongs_to :project
end
