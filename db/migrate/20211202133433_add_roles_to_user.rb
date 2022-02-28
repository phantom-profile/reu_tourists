# frozen_string_literal: true

class AddRolesToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_admin, :boolean, null: false, default: false
    add_column :users, :token_id, :integer, null: false
  end
end
