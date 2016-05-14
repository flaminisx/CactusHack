class Tag < ActiveRecord::Base
  has_many :user_tags
  has_many :users, through: :user_tags
  has_many :team_tags
  has_many :teams, through: :team_tags
  has_many :project_tags
  has_many :projects, through: :project_tags

end
