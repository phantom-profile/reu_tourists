# frozen_string_literal: true

class AddTourbaseToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :tourbase_id, :integer
  end
end
