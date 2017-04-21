# frozen_string_literal: true

class AddRecordsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :records, :string, array: true, default: []
  end
end
