class Api::V1::WorkoutsController < ApplicationController
  def index
    @workouts = current_user.workouts
  end
  def create

  end
  def show
  end
end
