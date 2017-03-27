# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :blog
  validates_length_of :comment, minimum: 1, maximum: 300
  validates :user, presence: true
end
