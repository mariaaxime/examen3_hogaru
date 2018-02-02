module UsersHelper
  def registries_chart_data
    1.month.ago.to_date.upto(Date.today).map do |date|
      {
        date: date,
        total_gained: CaloriesRegistry.where(["user_id = ? and registry_type = ? and day = ?", params[:id], "Gained", date]).sum(:quantity),
        total_burned: CaloriesRegistry.where(["user_id = ? and registry_type = ? and day = ?", params[:id], "Burned", date]).sum(:quantity)
      }
    end
  end
end
