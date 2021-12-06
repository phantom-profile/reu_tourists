# frozen_string_literal: true

class CreateSwords < ActiveRecord::Migration[6.1]
  def change
    create_table :swords do |t|
      t.string :name, null: false
      t.integer :min_damage, null: false
      t.integer :max_damage, null: false
      t.belongs_to :sword_type
      t.belongs_to :witcher

      t.timestamps
    end
  end
end
