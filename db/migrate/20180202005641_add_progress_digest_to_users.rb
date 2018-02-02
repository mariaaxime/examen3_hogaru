class AddProgressDigestToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :progress_digest, :string
  end
end
