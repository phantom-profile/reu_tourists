# frozen_string_literal: true

class CreateTours < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.integer :tour_duration_days, null: false, default: 3
      t.datetime :tour_starts, null: false, default: Date.today
      t.datetime :tour_finishes, null: false, default: (Date.today + 3.days)
      t.belongs_to :tourist


      t.timestamps
    end
  end
end
