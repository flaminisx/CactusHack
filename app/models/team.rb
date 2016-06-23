class Team < ActiveRecord::Base
	has_many :user_teams
	has_many :users, through: :user_teams
	
	has_many :projects
	belongs_to :speaker, class_name: "User"
	
	has_many :team_tags
	has_many :tags, through: :team_tags 
end
