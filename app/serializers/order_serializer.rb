# frozen_string_literal: true

class OrderSerializer < ActiveModel::Serializer
  attributes :id, :records, :complete
end
