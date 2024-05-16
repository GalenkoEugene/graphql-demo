# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_comment_by_global_id, mutation: Mutations::CreateCommentByGid
    field :create_comment_by_post_id, mutation: Mutations::CreateCommentByPostId
  end
end
