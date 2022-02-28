# frozen_string_literal: true

class AddNameToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :firstname, :string, null: false
    add_column :users, :lastname, :string, null: false
  end
end
