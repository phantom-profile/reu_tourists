# frozen_string_literal: true

class CreateWitchers < ActiveRecord::Migration[6.1]
  def change
    create_table :witchers do |t|
      t.string :name, null: false
      t.string :nickname
      t.belongs_to :school
      t.string :location, null: false, default: 'At his school'
      t.integer :age, null: false, default: 12

      t.timestamps
    end

    add_index :witchers, %i[name nickname], unique: true
  end
end
