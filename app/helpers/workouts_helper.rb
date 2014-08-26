module WorkoutsHelper
  def filter_result(attr_name)
    return attr_name != "user_id" && attr_name != "created_at" && attr_name != "updated_at" && attr_name != "name" && attr_name != "id"
  end

  def get_date(workout)
    day = workout.created_at.day
    month = workout.created_at.month
    year = workout.created_at.year
    "#{month}/#{day}/#{year}"
  end
end