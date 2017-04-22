# frozen_string_literal: true

class OrderSerializer < ActiveModel::Serializer
  attributes :id, :records, :complete, :editable

  def editable
    scope == object.user
  end
end
