class ShoppingCart < ApplicationRecord
  belongs_to :record_id
  belongs_to :user_id
end
