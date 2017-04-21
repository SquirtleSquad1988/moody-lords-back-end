# frozen_string_literal: true

class AddRecordsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :records, :jsonb, default: '{}'
  end
end
