class AddStatisticToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :viewed_pages, :integer, default: 0, null: false
    add_column :users, :edited_resources, :integer, default: 0, null: false
  end
end
