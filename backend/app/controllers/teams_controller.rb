class TeamsController < ApplicationController

    def index
        teams = Team.all 
        render json: teams
    end

    def show
        team = Team.find(params[:id])
        render json: team
    end

    def create
        team = Team.new(team_params)
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
