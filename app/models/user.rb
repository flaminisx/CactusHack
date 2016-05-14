class User < ActiveRecord::Base
	has_many :user_teams
	has_many :teams, through: :user_teams
	# has_many :projects, through: :teams

    # Backref for speker_id from team class
	has_many :represented_teams, class_name: "Team", 
	                             foreign_key: :speaker_id

    # Tags to desribe the user - manager, designer, etc.
	has_many :user_tags
	has_many :tags, through: :user_tags 

	has_secure_password
	validates_uniqueness_of :email

	after_touch :collect_projects

	    private
    def collect_projects
    	self.@projects = []
    	self.teams.each do |team|
    		self.@projects.push(*team.projects)
    	end
    end
end
