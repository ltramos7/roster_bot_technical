class TeamsController < ApplicationController

    def index
        teams = Team.all 
        render json: teams
    end

    def show
        team = Team.find_by(id: params[:id])
        render json: team
    end

    def create
        team = Team.create(team_params)
        # team = Team.new(team_params)
        # team.save
        if team.save
            render json: team
        else
            p team.errors.full_messages
        end
    end
    
    private
    
    def team_params
        params.require(:team).permit(:team_name, :email, :password)
        
    end

end
