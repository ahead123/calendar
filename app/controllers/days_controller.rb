class DaysController < ApplicationController
    before_action :require_user, only: [:index, :show]
    
    def index
        @days = Day.all
    end
    
    def show
        @days = Day.find(params[:id])
        @events = @days.events
    end
    
end
