class Team < ApplicationRecord
    has_one :roster
    has_secure_password
    validates :team_name, uniqueness: true
    validates :email, uniqueness: true
    validate :cannot_share_exisiting_team_name

    def cannot_share_exisiting_team_name
        team_names = Team.all.map do |team|
            team.team_name.downcase
        end

        current_team_name = team_name.downcase
       
        errors.add(:team_name) if team_names.include?(current_team_name)
  
        p errors.full_messages
    end
    
end
