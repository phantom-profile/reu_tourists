# frozen_string_literal: true

class CreateTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokens do |t|
      t.string :value, null: false
      t.boolean :admin_status, null: false, default: false
      t.belongs_to :user

      t.timestamps
    end

    add_index :tokens, :value, unique: true
  end
end
