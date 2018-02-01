class CreateCaloriesRegistries < ActiveRecord::Migration[5.1]
  def change
    create_table :calories_registries do |t|
      t.float :quantity
      t.string :type
      t.string :comment

      t.timestamps
    end
  end
end
