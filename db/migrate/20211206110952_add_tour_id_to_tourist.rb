# frozen_string_literal: true

class AddTourIdToTourist < ActiveRecord::Migration[6.1]
  def change
    add_column :tourists, :tour_id, :integer, null: true
  end
end
