module ProgressTrackersHelper
  def registries_chart_data_friend
    1.month.ago.to_date.upto(Date.today).map do |date|
      {
        date: date,
        total_gained: CaloriesRegistry.where(["user_id = ? and registry_type = ? and day = ?", params[:user], "Gained", date]).sum(:quantity),
        total_burned: CaloriesRegistry.where(["user_id = ? and registry_type = ? and day = ?", params[:user], "Burned", date]).sum(:quantity)
      }
    end
  end
end
