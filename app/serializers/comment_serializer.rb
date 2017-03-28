# frozen_string_literal: true

class CommentSerializer < ActiveModel::Serializer
  attributes :id, :comment, :updated_at, :user_id, :blog_id, :editable
  def editable
    scope == object.user
  end
end
