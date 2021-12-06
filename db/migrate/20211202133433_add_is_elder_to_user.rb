# frozen_string_literal: true

class AddIsElderToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :is_elder, :boolean, null: false, default: false
  end
end
