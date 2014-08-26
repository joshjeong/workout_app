module LedgersHelper
  def filter_result(attr_name)
    return attr_name != "user_id" && attr_name != "created_at" && attr_name != "updated_at" && attr_name != "id"
  end

  def get_date(ledger)
    day = ledger.created_at.day
    month = ledger.created_at.month
    year = ledger.created_at.year
    "#{month}/#{day}/#{year}"
  end
end