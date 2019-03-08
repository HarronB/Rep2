# frozen_string_literal: true

class CoachesController < ApplicationController
  # action for the index. We will retireve all coaches in an instance variable for use in the view
  def index
    @coaches = Coach.includes(:team).order(:name)
  end

  # action for show. Will retireve 1 coach based of ID and create instance var for use in show view
  def show
    @coach = Coach.includes(:team).find(params[:id])
  end
end
