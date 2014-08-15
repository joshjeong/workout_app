module WorkoutsHelper
  def filter_result(attribute_name)
    return attribute_name != "user_id" && attribute_name != "created_at" && attribute_name != "updated_at" && attribute_name != "name" && attribute_name != "id"
  end
end