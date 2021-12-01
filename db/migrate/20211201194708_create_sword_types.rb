class CreateSwordTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :sword_types do |t|
      t.string :type, null: false

      t.timestamps
    end

    add_index :sword_types, :type, unique: true
  end
end
