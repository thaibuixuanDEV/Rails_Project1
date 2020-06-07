class AddExpirableDeviseSecurityExtensionToUser < ActiveRecord::Migration[5.2]
  def change
    def change
      add_column :users, :last_activity_at, :datetime
      add_column :users, :expired_at, :datetime
      add_index :users, :last_activity_at
      add_index :users, :expired_at
    end
  end
end
