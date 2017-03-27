# frozen_string_literal: true

class RecordSerializer < ActiveModel::Serializer
  attributes :id, :title, :artist, :press_date, :price, :quantity
end
