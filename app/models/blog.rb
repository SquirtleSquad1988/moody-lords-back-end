# frozen_string_literal: true

class Blog < ApplicationRecord
  belongs_to :user
  validates_length_of :title, minimum: 1, maximum: 50
  validates_length_of :body, minimum: 1, maximum: 1005
  validates :user, presence: true
end
