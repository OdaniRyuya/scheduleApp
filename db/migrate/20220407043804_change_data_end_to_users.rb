class ChangeDataEndToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :end, :datetime
  end
end
