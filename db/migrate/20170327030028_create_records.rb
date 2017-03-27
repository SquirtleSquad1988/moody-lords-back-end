# frozen_string_literal: true

class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.string :title
      t.string :artist
      t.integer :press_date
      t.decimal :price
      t.integer :quantity

      t.timestamps
    end
  end
end
