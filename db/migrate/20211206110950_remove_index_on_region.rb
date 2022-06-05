# frozen_string_literal: true

class RemoveIndexOnRegion < ActiveRecord::Migration[6.1]
  def change
    remove_index :regions, :name
  end
end
