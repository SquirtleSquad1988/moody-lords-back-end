# frozen_string_literal: true

class CreateShoppingCarts < ActiveRecord::Migration[5.0]
  def change
    create_table :shopping_carts do |t|
      t.references :records, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
