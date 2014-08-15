class WorkoutsController < ActionController::Base
  def index
    @user = User.where('id = ?', params[:user_id])
  end

  def new
    @workout = Workout.new
  end

  def create
    params.permit!
    @workout = Workout.create(params[:workout])
  end

  def show
    user_id = params[:user_id]
    id = params[:id]
    @workout = Workout.find(id)
    @workout_name = @workout.name
    @workouts = Workout.where('user_id = ? AND name = ?', user_id, @workout_name)
  end

end
