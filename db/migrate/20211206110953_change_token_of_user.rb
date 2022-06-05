# frozen_string_literal: true

class ChangeTokenOfUser < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :token_id, :string, null: true
  end
end
