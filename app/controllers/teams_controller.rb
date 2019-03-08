# frozen_string_literal: true

class TeamsController < ApplicationController
  # action for the index. We will retireve all teams in an instance variable for use in the view
  def index
    @teams = Team.includes(:coaches, :players).order(:name)
  end

  # action for show. Will retireve 1 team based of ID and create instance var for use in show view
  def show
    @team = Team.includes(:coaches, :players).find(params[:id])
  end
end
