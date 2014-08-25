class WorkoutsController < ApplicationController
  def index
    @user = User.where('id = ?', params[:user_id])
  end

  def new
    @workout = Workout.new
  end

  def create
    params.permit!
    @user = User.where('id = ?', params[:user_id])
    @user.first.workouts.create(params[:workout])
    binding.pry
    redirect_to user_workouts_path
  end

  def show
    user_id = params[:user_id]
    @workout = Workout.find(params[:id])
    @workout_name = @workout.name
    @workouts = Workout.where('user_id = ? AND name = ?', user_id, @workout_name)
  end

end
