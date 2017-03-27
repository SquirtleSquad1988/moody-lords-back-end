# frozen_string_literal: true

class Record < ApplicationRecord
  validates_length_of :title, minimum: 1
  validates_uniqueness_of :title
  validates_length_of :artist, minimum: 1
  validates_length_of :press_date, minimum: 1
  validates_numericality_of :press_date
  validates_length_of :price, minimum: 1
  validates_numericality_of :price
  validates_length_of :quantity, minimum: 1
  validates_numericality_of :quantity
end
