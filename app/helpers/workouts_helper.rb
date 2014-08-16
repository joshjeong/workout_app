module WorkoutsHelper
  def filter_result(attr_name)
    return attr_name != "user_id" && attr_name != "created_at" && attr_name != "updated_at" && attr_name != "name" && attr_name != "id"
  end
end