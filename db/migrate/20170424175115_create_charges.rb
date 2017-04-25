# frozen_string_literal: true

class CreateCharges < ActiveRecord::Migration[5.0]
  def change
    create_table :charges do |t|
      t.string :token

      t.timestamps
    end
  end
end
