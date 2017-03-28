# frozen_string_literal: true

class BlogSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :updated_at, :user_id, :editable
  def editable
    scope == object.user
  end
end
