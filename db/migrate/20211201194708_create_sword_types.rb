# frozen_string_literal: true

class CreateSwordTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :sword_types do |t|
      t.string :material, null: false

      t.timestamps
    end

    add_index :sword_types, :material, unique: true
  end
end
