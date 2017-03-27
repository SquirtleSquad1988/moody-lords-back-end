# frozen_string_literal: true

class ShoppingCartSerializer < ActiveModel::Serializer
  attributes :id
  has_one :record_id
  has_one :user_id
end
