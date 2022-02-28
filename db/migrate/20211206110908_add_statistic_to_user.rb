# frozen_string_literal: true

class AddStatisticToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :served_tourists, :integer, default: 0, null: false
    add_column :users, :edited_resources, :integer, default: 0, null: false
  end
end
