class RostersController < ApplicationController
    def index
        rosters = Roster.all 
        render json: rosters
    end

    def show
        roster = Roster.find(params[:id])
        render json: roster
    end


end
