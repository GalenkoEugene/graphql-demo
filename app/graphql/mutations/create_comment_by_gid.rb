# frozen_string_literal: true

module Mutations
  class CreateCommentByGid < Mutations::BaseMutation
    null true
    argument :body, String
    argument :post_gid, ID, loads: Types::PostType, as: :post # works only with global_id (take a look at GraphqlDemoSchema#object_from_id)

    field :comment, Types::CommentType
    field :errors, [String], null: false

    # The #resolve method should return a hash whose symbols match the field names.
    def resolve(body:, post:)
      comment = post.comments.build(body:)
      if comment.save
        {
          comment:,
          errors: []
        }
      else
        {
          comment: nil,
          errors: comment.errors.full_messages
        }
      end
    end
  end
end
