# frozen_string_literal: true

class ChangeTouristOnTour < ActiveRecord::Migration[6.1]
  def change
    remove_column :tourists, :tourbase_id
    add_column :tours, :tourbase_id, :integer, null: false
  end
end
