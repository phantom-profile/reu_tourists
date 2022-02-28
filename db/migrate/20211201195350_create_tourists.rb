# frozen_string_literal: true

class CreateTourists < ActiveRecord::Migration[6.1]
  def change
    create_table :tourists do |t|
      t.string :firstname, null: false
      t.string :lastname
      t.string :email
      t.belongs_to :tourbase
      t.integer :age, null: false, default: 14

      t.timestamps
    end

    add_index :tourists, :email, unique: true
  end
end
