class TeamTag < ActiveRecord::Base
    belongs_to :team
    belongs_to :tag
end
