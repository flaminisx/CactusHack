class Project < ActiveRecord::Base
	belongs_to :owner, class_name: "Team"
	has_many :events

	has_many :project_tags
	has_many :tags, through: :project_tags 
end
