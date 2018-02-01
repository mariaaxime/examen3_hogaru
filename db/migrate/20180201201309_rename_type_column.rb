class RenameTypeColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :calories_registries, :type, :registry_type
  end
end
