class ChangeDataStartToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :start, :datetime
  end
end
