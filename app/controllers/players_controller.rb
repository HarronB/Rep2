# frozen_string_literal: true

class PlayersController < ApplicationController
  # action for the index. We will retireve all players in an instance variable for use in the view
  def index
    @players = Player.includes(:team).order(:name)
  end

  # action for show. Will retireve 1 player based of ID and create instance var for use in show view
  def show
    @player = Player.includes(:team).find(params[:id])
  end
end
