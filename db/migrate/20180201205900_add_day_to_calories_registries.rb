class AddDayToCaloriesRegistries < ActiveRecord::Migration[5.1]
  def change
    add_column :calories_registries, :day, :date
  end
end
