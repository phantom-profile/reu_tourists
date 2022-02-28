# frozen_string_literal: true

class CreateRegions < ActiveRecord::Migration[6.1]
  def change
    create_table :regions do |t|
      t.string :location, null: false
      t.string :country, null: false

      t.timestamps
    end

    add_index :regions, :name, unique: true
  end
end
