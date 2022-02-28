# frozen_string_literal: true

class CreateTourbases < ActiveRecord::Migration[6.1]
  def change
    create_table :tourbases do |t|
      t.string :name, null: false
      t.integer :max_capacity, null: false
      t.integer :current_capacity, null: false
      t.belongs_to :region

      t.timestamps
    end
  end
end
